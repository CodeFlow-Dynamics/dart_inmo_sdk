/// Post-processing step run after `dart run swagger_parser`.
///
/// Adds `import '../retrofit_query_serializers.dart';` to every generated
/// Retrofit client that declares a `DateTime` query parameter, so that the
/// `serializeDateTime` function produced by `build_runner` is in scope.
library;

import 'dart:io';

void main() {
  final apiDir = Directory('${Directory.current.path}/lib/src/api');

  if (!apiDir.existsSync()) {
    stderr.writeln('API directory not found: ${apiDir.path}');
    exitCode = 1;
    return;
  }

  final clientFiles = apiDir
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('_client.dart'))
      .where((f) => !f.path.endsWith('_client.g.dart'));

  const importLine = "import '../retrofit_query_serializers.dart';";
  const dateTimeQueryPattern = '@Query(';

  for (final file in clientFiles) {
    var content = file.readAsStringSync();

    if (!content.contains(dateTimeQueryPattern)) continue;
    if (!content.contains('DateTime')) continue;
    if (content.contains(importLine)) continue;

    final lines = content.split('\n');
    final lastPackageImport = lines.lastIndexWhere(
      (l) => l.startsWith("import 'package:"),
    );

    if (lastPackageImport == -1) continue;

    lines.insert(lastPackageImport + 1, importLine);
    file.writeAsStringSync(lines.join('\n'));
    stdout.writeln('Patched ${file.path}');
  }
}
