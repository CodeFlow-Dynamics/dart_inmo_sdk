import 'dart:async';

FutureOr<String?> serializeDateTime(DateTime? dateTime) =>
    dateTime?.toIso8601String();
