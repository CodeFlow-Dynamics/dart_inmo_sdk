import 'dart:io';

final _methodRegex = RegExp(
  r'Future<HttpResponse<([^>]+)>>\s+([A-Za-z0-9_]+)\s*\(((?:\{[\s\S]*?\})?)\);',
  multiLine: true,
);

final _paramRegex = RegExp(
  r'(?:@[A-Za-z0-9_]+\([^)]*\)\s*)*(required\s+)?([A-Za-z0-9_<>,.? ]+)\s+([A-Za-z0-9_]+),',
);

class ClientMethod {
  ClientMethod({
    required this.originalName,
    required this.repoName,
    required this.resultType,
    required this.params,
  });

  final String originalName;
  final String repoName;
  final String resultType;
  final List<RepoParam> params;
}

class RepoParam {
  RepoParam({
    required this.requiredKeyword,
    required this.type,
    required this.name,
  });

  final bool requiredKeyword;
  final String type;
  final String name;
}

void main() {
  final root = Directory.current.path;
  final generatedDir = Directory('$root/lib/src/api');
  final outputDir = Directory('$root/lib/src/repo');
  final rootClientType = _resolveRootClientTypeFromConfig(root);

  if (!generatedDir.existsSync()) {
    stderr.writeln('Missing generated API folder: ${generatedDir.path}');
    exitCode = 1;
    return;
  }

  outputDir.createSync(recursive: true);

  final clientFiles = generatedDir
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => !f.path.replaceAll('\\', '/').contains('/generated/'))
      .where((f) => f.path.endsWith('_client.dart'))
      .where((f) => !f.path.endsWith('_client.g.dart'))
      .where((f) => !f.path.endsWith('base_api_client.dart'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  if (clientFiles.isEmpty) {
    stdout.writeln('No *_client.dart files found in ${generatedDir.path}.');
    return;
  }

  final generatedRepoFiles = <String>[];

  for (final file in clientFiles) {
    final content = file.readAsStringSync();
    final rel = file.path.replaceAll('\\', '/');
    final fileName = rel.split('/').last;
    final clientBase = fileName.replaceAll('_client.dart', '');
    final clientAccessor = _lowerCamel(clientBase);
    final className = '${_pascal(clientBase)}Repo';
    final implClassName = '${className}Impl';

    final methods = _parseMethods(content);
    if (methods.isEmpty) {
      continue;
    }

    final repoFileName = '${clientBase}_repo.dart';
    final targetFile = File('${outputDir.path}/$repoFileName');
    targetFile.writeAsStringSync(
      _buildRepoFile(
        className: className,
        implClassName: implClassName,
        clientAccessor: clientAccessor,
        rootClientType: rootClientType,
        methods: methods,
      ),
    );

    generatedRepoFiles.add(repoFileName);
    stdout.writeln('Generated ${targetFile.path}');
  }

  final exportFile = File('${outputDir.path}/export.dart');
  exportFile.writeAsStringSync(_buildExportFile(generatedRepoFiles));
  stdout.writeln('Generated ${exportFile.path}');
}

List<ClientMethod> _parseMethods(String content) {
  final methods = <ClientMethod>[];
  for (final match in _methodRegex.allMatches(content)) {
    final rawType = match.group(1)!.trim();
    final methodName = match.group(2)!.trim();
    final rawParams = match.group(3) ?? '';
    final paramsBlock = rawParams.startsWith('{') && rawParams.endsWith('}')
        ? rawParams.substring(1, rawParams.length - 1)
        : '';
    final params = <RepoParam>[];

    for (final paramMatch in _paramRegex.allMatches(paramsBlock)) {
      final requiredKeyword = (paramMatch.group(1) ?? '').trim().isNotEmpty;
      final type = paramMatch.group(2)!.trim();
      final name = paramMatch.group(3)!.trim();
      params.add(
        RepoParam(
          requiredKeyword: requiredKeyword,
          type: type,
          name: name,
        ),
      );
    }

    methods.add(
      ClientMethod(
        originalName: methodName,
        repoName: _stripApiVersionFromName(methodName),
        resultType: rawType == 'void' ? 'Unit' : rawType,
        params: params,
      ),
    );
  }

  return methods;
}

String _buildRepoFile({
  required String className,
  required String implClassName,
  required String clientAccessor,
  required String rootClientType,
  required List<ClientMethod> methods,
}) {
  final hasFileParam = methods.any(
    (m) => m.params.any((p) => _normalizeType(p.type).replaceAll('?', '') == 'File'),
  );
  final hasUnitResult = methods.any((m) => m.resultType == 'Unit');
  final ioImport = hasFileParam ? "import 'dart:io' show File;\n\n" : '';
  final fpdartImport = hasUnitResult ? "import 'package:fpdart/fpdart.dart';\n" : '';
  final abstractMethods = methods.map(_buildAbstractMethod).join('\n');
  final implMethods = methods.map((m) => _buildImplMethod(m, clientAccessor)).join('\n');

  return '''
// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

${ioImport}import 'package:inmo_api_sdk/src/api/export.dart';
${fpdartImport}import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class $className {
$abstractMethods
}

class $implClassName extends BaseRepo implements $className {
  $implClassName(this._api);

  final $rootClientType _api;

$implMethods
}
''';
}

String _buildExportFile(List<String> repoFileNames) {
  final exports = repoFileNames
      .map((f) => "export '$f';")
      .join('\n');
  return '''
// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

$exports
''';
}

String _resolveRootClientTypeFromConfig(String rootPath) {
  final configFile = File('$rootPath/swagger_parser.yaml');
  if (!configFile.existsSync()) {
    return 'BaseApiClient';
  }
  final configContent = configFile.readAsStringSync();
  for (final line in configContent.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.startsWith('root_client_name:')) {
      final value = trimmed.split(':').skip(1).join(':').trim();
      if (value.isNotEmpty) {
        return value;
      }
    }
  }
  return 'BaseApiClient';
}

String _buildAbstractMethod(ClientMethod method) {
  final params = _buildRepoMethodParams(method.params);
  return '  Future<ResultApi<${method.resultType}>> ${method.repoName}($params);';
}

String _buildImplMethod(ClientMethod method, String clientAccessor) {
  final params = _buildRepoMethodParams(method.params);
  final callParams = _buildClientCallParams(method.params);
  return '''
  @override
  Future<ResultApi<${method.resultType}>> ${method.repoName}($params) {
    return executeApiCall<${method.resultType}>(
      apiCall: () => _api.$clientAccessor.${method.originalName}($callParams),
    );
  }
''';
}

String _buildRepoMethodParams(List<RepoParam> params) {
  if (params.isEmpty) {
    return '';
  }

  final lines = params.map((p) {
    final req = p.requiredKeyword ? 'required ' : '';
    return '    $req${_normalizeType(p.type)} ${p.name},';
  }).join('\n');

  return '{\n$lines\n  }';
}

String _buildClientCallParams(List<RepoParam> params) {
  if (params.isEmpty) {
    return '';
  }

  final lines = params.map((p) => '        ${p.name}: ${p.name},').join('\n');
  return '\n$lines\n      ';
}

String _normalizeType(String type) {
  final trimmed = type.trim();
  if (trimmed == 'void') {
    return 'void';
  }
  if (trimmed == 'String' || trimmed == 'String?') return trimmed;
  if (trimmed == 'int' || trimmed == 'int?') return trimmed;
  if (trimmed == 'bool' || trimmed == 'bool?') return trimmed;
  if (trimmed == 'DateTime' || trimmed == 'DateTime?') return trimmed;
  if (trimmed == 'File' || trimmed == 'File?') return trimmed;
  if (trimmed.startsWith('List<') || trimmed.startsWith('Map<')) return trimmed;
  return trimmed;
}

String _stripApiVersionFromName(String name) {
  return name.replaceAllMapped(RegExp(r'ApiV\d+'), (_) => '');
}

String _lowerCamel(String input) {
  final parts = input.split('_').where((p) => p.isNotEmpty).toList();
  if (parts.isEmpty) return input;
  return parts.first + parts.skip(1).map(_capitalize).join();
}

String _pascal(String input) {
  final parts = input.split('_').where((p) => p.isNotEmpty).toList();
  return parts.map(_capitalize).join();
}

String _capitalize(String value) {
  if (value.isEmpty) return value;
  return value[0].toUpperCase() + value.substring(1);
}
