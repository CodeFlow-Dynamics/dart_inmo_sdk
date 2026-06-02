/// Print any non-boolean 'nullable' fields in an OpenAPI JSON spec.
///
/// The Dart OpenAPI generator crashes when a 'nullable' field value is not a
/// boolean. This script finds up to 10 such offenders so the spec can be fixed
/// before generation is attempted.
///
/// Usage:
///   dart run scripts/ci/debug_nullable_fields.dart `path-to-swagger.json`
library;

import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  if (args.length != 1) {
    stderr.writeln(
      'Usage: dart run scripts/ci/debug_nullable_fields.dart <path-to-swagger.json>',
    );
    exit(1);
  }

  final file = File(args[0]);
  if (!file.existsSync()) {
    stderr.writeln('Error: file not found: ${args[0]}');
    exit(1);
  }

  final data = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
  // Mirror Flutter's kDebugMode behavior without importing Flutter.
  const isDebugMode = !bool.fromEnvironment('dart.vm.product');
  if (isDebugMode) {
    stdout.writeln('openapi: ${data['openapi']}');
  }

  final offenders = <(String, String)>[];

  void walk(Object? obj, String path) {
    if (offenders.length >= 10) return;

    if (obj is Map<String, dynamic>) {
      for (final entry in obj.entries) {
        final nextPath = path.isEmpty ? entry.key : '$path/${entry.key}';
        if (entry.key == 'nullable' && entry.value is! bool && entry.value != null) {
          offenders.add((nextPath, entry.value.runtimeType.toString()));
        }
        walk(entry.value, nextPath);
      }
    } else if (obj is List<dynamic>) {
      for (var i = 0; i < obj.length; i++) {
        walk(obj[i], '$path[$i]');
      }
    }
  }

  walk(data, '');

  if (offenders.isEmpty) {
    if (isDebugMode) {
      stdout.writeln("No non-bool 'nullable' fields found.");
    }
  } else {
    if (isDebugMode) {
      stdout.writeln("Non-bool 'nullable' fields (showing up to 10):");
    }
    for (final (path, type) in offenders) {
      if (isDebugMode) {
        stdout.writeln(' - $path: $type');
      }
    }
  }
}
