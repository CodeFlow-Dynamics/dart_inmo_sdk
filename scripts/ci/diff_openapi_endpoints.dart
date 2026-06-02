/// Compares two OpenAPI spec files and outputs a Markdown summary of
/// added, removed, and updated endpoints.
///
/// For added/updated endpoints the output includes:
/// - Content-Type
/// - Request body schema (resolved from $ref) as JSON
/// - Response schemas (resolved from $ref) per HTTP status code as JSON
///
/// Usage:
///   dart run scripts/ci/diff_openapi_endpoints.dart `old_spec` `new_spec`
///
/// Prints nothing when there are no changes.
library;
import 'dart:convert';
import 'dart:io';

const _httpMethods = {'get', 'post', 'put', 'delete', 'patch'};
const _jsonEncoder = JsonEncoder.withIndent('  ');

void main(List<String> args) {
  if (args.length != 2) {
    stderr.writeln(
      'Usage: dart run scripts/ci/diff_openapi_endpoints.dart <old_spec> <new_spec>',
    );
    exit(1);
  }

  final oldSpec = _loadSpec(args[0]);
  final newSpec = _loadSpec(args[1]);

  final oldEndpoints = _extractEndpoints(oldSpec);
  final newEndpoints = _extractEndpoints(newSpec);

  final oldKeys = oldEndpoints.keys.toSet();
  final newKeys = newEndpoints.keys.toSet();

  final added = newKeys.difference(oldKeys);
  final removed = oldKeys.difference(newKeys);
  final common = oldKeys.intersection(newKeys);

  final updated = <String, _EndpointDiff>{};
  for (final key in common) {
    final diff = _diffEndpoint(oldEndpoints[key]!, newEndpoints[key]!);
    if (diff != null) updated[key] = diff;
  }

  if (added.isEmpty && removed.isEmpty && updated.isEmpty) return;

  final buf = StringBuffer();

  if (added.isNotEmpty) {
    buf.writeln('### 🆕 New endpoints');
    buf.writeln();
    for (final key in _sorted(added)) {
      _writeEndpointDetail(buf, newEndpoints[key]!, newSpec);
    }
  }

  if (removed.isNotEmpty) {
    buf.writeln('### 🗑️ Removed endpoints');
    buf.writeln();
    for (final key in _sorted(removed)) {
      final ep = oldEndpoints[key]!;
      buf.writeln('- `${ep.method}` `${ep.path}`');
    }
    buf.writeln();
  }

  if (updated.isNotEmpty) {
    buf.writeln('### ✏️ Updated endpoints');
    buf.writeln();
    for (final key in _sorted(updated.keys.toSet())) {
      _writeUpdatedEndpointDetail(
        buf,
        oldEndpoints[key]!,
        newEndpoints[key]!,
        updated[key]!,
        newSpec,
      );
    }
  }

  stdout.write(buf.toString().trimRight());
}

// ---------------------------------------------------------------------------
// Models
// ---------------------------------------------------------------------------

class _RequestInfo {
  final String contentType;
  final Map<String, dynamic> schema;

  _RequestInfo({required this.contentType, required this.schema});

  @override
  bool operator ==(Object other) =>
      other is _RequestInfo &&
      contentType == other.contentType &&
      jsonEncode(schema) == jsonEncode(other.schema);

  @override
  int get hashCode => jsonEncode(schema).hashCode ^ contentType.hashCode;
}

class _ResponseInfo {
  final String statusCode;
  final String description;
  final String? contentType;
  final Map<String, dynamic>? schema;

  _ResponseInfo({
    required this.statusCode,
    required this.description,
    this.contentType,
    this.schema,
  });

  @override
  bool operator ==(Object other) =>
      other is _ResponseInfo &&
      statusCode == other.statusCode &&
      description == other.description &&
      contentType == other.contentType &&
      jsonEncode(schema) == jsonEncode(other.schema);

  @override
  int get hashCode => statusCode.hashCode ^ jsonEncode(schema).hashCode;
}

class _Endpoint {
  final String method;
  final String path;
  final _RequestInfo? request;
  final List<_ResponseInfo> responses;
  final Map<String, dynamic> raw;

  _Endpoint({
    required this.method,
    required this.path,
    required this.request,
    required this.responses,
    required this.raw,
  });

  String get key => '${method.toUpperCase()} $path';
}

class _EndpointDiff {
  final List<String> changes;
  _EndpointDiff(this.changes);
}

// ---------------------------------------------------------------------------
// Parsing
// ---------------------------------------------------------------------------

Map<String, dynamic> _loadSpec(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

Map<String, _Endpoint> _extractEndpoints(Map<String, dynamic> spec) {
  final paths = spec['paths'] as Map<String, dynamic>? ?? {};
  final endpoints = <String, _Endpoint>{};

  for (final pathEntry in paths.entries) {
    final pathStr = pathEntry.key;
    final ops = pathEntry.value as Map<String, dynamic>;

    for (final opEntry in ops.entries) {
      final method = opEntry.key;
      if (!_httpMethods.contains(method)) continue;
      final details = opEntry.value as Map<String, dynamic>;

      final ep = _Endpoint(
        method: method.toUpperCase(),
        path: pathStr,
        request: _extractRequest(details),
        responses: _extractResponses(details),
        raw: details,
      );
      endpoints[ep.key] = ep;
    }
  }
  return endpoints;
}

_RequestInfo? _extractRequest(Map<String, dynamic> details) {
  final body = details['requestBody'] as Map<String, dynamic>?;
  if (body == null) return null;
  final content = body['content'] as Map<String, dynamic>? ?? {};
  for (final entry in content.entries) {
    final schema =
        (entry.value as Map<String, dynamic>)['schema'] as Map<String, dynamic>?;
    if (schema == null) continue;
    return _RequestInfo(contentType: entry.key, schema: schema);
  }
  return null;
}

List<_ResponseInfo> _extractResponses(Map<String, dynamic> details) {
  final responses = details['responses'] as Map<String, dynamic>? ?? {};
  final result = <_ResponseInfo>[];

  for (final entry in responses.entries) {
    final resp = entry.value as Map<String, dynamic>;
    final description = resp['description'] as String? ?? '';
    final content = resp['content'] as Map<String, dynamic>?;

    if (content == null) {
      result.add(_ResponseInfo(
        statusCode: entry.key,
        description: description,
      ));
      continue;
    }

    for (final ctEntry in content.entries) {
      final schema =
          (ctEntry.value as Map<String, dynamic>)['schema'] as Map<String, dynamic>?;
      result.add(_ResponseInfo(
        statusCode: entry.key,
        description: description,
        contentType: ctEntry.key,
        schema: schema,
      ));
      break; // one content-type per status code is enough
    }
  }

  result.sort((a, b) => a.statusCode.compareTo(b.statusCode));
  return result;
}

// ---------------------------------------------------------------------------
// Schema resolution
// ---------------------------------------------------------------------------

/// Resolves a `$ref` like `#/components/schemas/Foo` into the DTO definition
/// from the spec.  Returns a map with the DTO name as key and its properties
/// (or the full schema) as value.  If the ref cannot be resolved, returns the
/// original schema as-is.
Map<String, dynamic> _resolveSchema(
  Map<String, dynamic> schema,
  Map<String, dynamic> spec,
) {
  final ref = schema[r'$ref'] as String?;
  if (ref != null) {
    final name = ref.split('/').last;
    final resolved = _resolveRef(ref, spec);
    if (resolved != null) {
      return <String, dynamic>{name: _simplifyDto(resolved)};
    }
    return <String, dynamic>{name: '...'};
  }

  // Array of $ref
  final items = schema['items'] as Map<String, dynamic>?;
  if (items != null && items.containsKey(r'$ref')) {
    final innerRef = items[r'$ref'] as String;
    final name = innerRef.split('/').last;
    final resolved = _resolveRef(innerRef, spec);
    if (resolved != null) {
      return <String, dynamic>{'$name[]': _simplifyDto(resolved)};
    }
    return <String, dynamic>{'$name[]': '...'};
  }

  return schema;
}

/// Walks a `#/components/schemas/Name` path and returns the schema map.
Map<String, dynamic>? _resolveRef(String ref, Map<String, dynamic> spec) {
  if (!ref.startsWith('#/')) return null;
  final parts = ref.substring(2).split('/');
  dynamic current = spec;
  for (final part in parts) {
    if (current is Map<String, dynamic>) {
      current = current[part];
    } else {
      return null;
    }
  }
  return current is Map<String, dynamic> ? current : null;
}

/// Simplifies a DTO definition to show property names and their types.
Map<String, dynamic> _simplifyDto(Map<String, dynamic> schema) {
  final properties = schema['properties'] as Map<String, dynamic>?;
  if (properties == null) return schema;

  final result = <String, dynamic>{};
  for (final entry in properties.entries) {
    final prop = entry.value as Map<String, dynamic>;
    result[entry.key] = _propertyType(prop);
  }
  return result;
}

/// Returns a concise type string for a schema property.
String _propertyType(Map<String, dynamic> prop) {
  final ref = prop[r'$ref'] as String?;
  if (ref != null) return ref.split('/').last;

  // oneOf / anyOf
  final oneOf = prop['oneOf'] ?? prop['anyOf'];
  if (oneOf is List && oneOf.isNotEmpty) {
    final types = oneOf
        .whereType<Map<String, dynamic>>()
        .map((s) => _propertyType(s))
        .join(' | ');
    return types;
  }

  final rawType = prop['type'];
  String? type;
  bool nullableFromType = false;
  if (rawType is String) {
    type = rawType;
  } else if (rawType is List) {
    // OpenAPI 3.1: type: ["null", "string"] means nullable string
    final nonNull = rawType.where((t) => t != 'null').toList();
    type = nonNull.isNotEmpty ? nonNull.first.toString() : 'object';
    nullableFromType = rawType.contains('null');
  }
  final format = prop['format'] as String?;
  final nullable = prop['nullable'] == true || nullableFromType;
  final suffix = nullable ? '?' : '';

  if (type == 'array') {
    final items = prop['items'] as Map<String, dynamic>?;
    if (items != null) {
      final itemRef = items[r'$ref'] as String?;
      if (itemRef != null) return '${itemRef.split('/').last}[]$suffix';
      return '${items['type'] ?? 'object'}[]$suffix';
    }
    return 'array$suffix';
  }

  if (format != null) return '$type($format)$suffix';
  return '${type ?? 'object'}$suffix';
}

// ---------------------------------------------------------------------------
// Markdown output helpers
// ---------------------------------------------------------------------------

void _writeSchemaBlock(
  StringBuffer buf,
  Map<String, dynamic> schema,
  Map<String, dynamic> spec,
) {
  final resolved = _resolveSchema(schema, spec);
  buf.writeln('```json');
  buf.writeln(_jsonEncoder.convert(resolved));
  buf.writeln('```');
}

// ---------------------------------------------------------------------------
// Markdown output — new endpoints
// ---------------------------------------------------------------------------

void _writeEndpointDetail(
  StringBuffer buf,
  _Endpoint ep,
  Map<String, dynamic> spec,
) {
  buf.writeln('<details>');
  buf.writeln(
    '<summary><code>${ep.method}</code> <code>${ep.path}</code></summary>',
  );
  buf.writeln();

  if (ep.request != null) {
    buf.writeln('**Request** · `${ep.request!.contentType}`');
    _writeSchemaBlock(buf, ep.request!.schema, spec);
    buf.writeln();
  }

  buf.writeln('**Responses**');
  buf.writeln();
  for (final r in ep.responses) {
    final ct = r.contentType != null ? ' · `${r.contentType}`' : '';
    buf.writeln('`${r.statusCode}` ${r.description}$ct');
    if (r.schema != null) {
      _writeSchemaBlock(buf, r.schema!, spec);
    }
    buf.writeln();
  }

  buf.writeln('</details>');
  buf.writeln();
}

// ---------------------------------------------------------------------------
// Markdown output — updated endpoints
// ---------------------------------------------------------------------------

void _writeUpdatedEndpointDetail(
  StringBuffer buf,
  _Endpoint old,
  _Endpoint now,
  _EndpointDiff diff,
  Map<String, dynamic> spec,
) {
  buf.writeln('<details>');
  buf.writeln(
    '<summary><code>${now.method}</code> <code>${now.path}</code></summary>',
  );
  buf.writeln();

  for (final change in diff.changes) {
    buf.writeln('- $change');
  }
  buf.writeln();

  // Show current request if it changed
  if (old.request != now.request && now.request != null) {
    buf.writeln('**Request** · `${now.request!.contentType}`');
    _writeSchemaBlock(buf, now.request!.schema, spec);
    buf.writeln();
  }

  // Show current responses if they changed
  final oldResSig = jsonEncode(old.responses.map(_responseSig).toList());
  final nowResSig = jsonEncode(now.responses.map(_responseSig).toList());

  if (oldResSig != nowResSig) {
    buf.writeln('**Responses**');
    buf.writeln();
    for (final r in now.responses) {
      final ct = r.contentType != null ? ' · `${r.contentType}`' : '';
      buf.writeln('`${r.statusCode}` ${r.description}$ct');
      if (r.schema != null) {
        _writeSchemaBlock(buf, r.schema!, spec);
      }
      buf.writeln();
    }
  }

  buf.writeln('</details>');
  buf.writeln();
}

Map<String, dynamic> _responseSig(_ResponseInfo r) {
  return <String, dynamic>{
    's': r.statusCode,
    'c': r.contentType,
    'sc': r.schema,
  };
}

// ---------------------------------------------------------------------------
// Diffing
// ---------------------------------------------------------------------------

_EndpointDiff? _diffEndpoint(_Endpoint old, _Endpoint now) {
  final changes = <String>[];

  if (old.request != now.request) {
    final oldLabel = old.request != null
        ? '`${_schemaName(old.request!.schema)}` (`${old.request!.contentType}`)'
        : 'none';
    final nowLabel = now.request != null
        ? '`${_schemaName(now.request!.schema)}` (`${now.request!.contentType}`)'
        : 'none';
    changes.add('Request: $oldLabel → $nowLabel');
  }

  // Compare responses
  final oldResSig = jsonEncode(old.responses.map(_responseSig).toList());
  final nowResSig = jsonEncode(now.responses.map(_responseSig).toList());
  if (oldResSig != nowResSig) {
    changes.add('Responses changed');
  }

  // Detect parameter changes
  final oldParams = _paramSignature(old.raw);
  final nowParams = _paramSignature(now.raw);
  if (oldParams != nowParams) {
    changes.add('Parameters changed');
  }

  return changes.isEmpty ? null : _EndpointDiff(changes);
}

String _schemaName(Map<String, dynamic> schema) {
  final ref = schema[r'$ref'] as String?;
  if (ref != null) return ref.split('/').last;
  final items = schema['items'] as Map<String, dynamic>?;
  if (items != null) {
    final itemRef = items[r'$ref'] as String?;
    if (itemRef != null) return '${itemRef.split('/').last}[]';
  }
  return schema['type'] as String? ?? 'object';
}

String _paramSignature(Map<String, dynamic> details) {
  final params = details['parameters'] as List<dynamic>? ?? [];
  final parts = params.map((p) {
    final pm = p as Map<String, dynamic>;
    final name = pm['name'] ?? '';
    final inLoc = pm['in'] ?? '';
    final schema = pm['schema'] as Map<String, dynamic>? ?? {};
    final type = schema['type'] ?? schema[r'$ref'] ?? '';
    return '$inLoc:$name:$type';
  }).toList()
    ..sort();
  return parts.join('|');
}

List<String> _sorted(Set<String> keys) => keys.toList()..sort();
