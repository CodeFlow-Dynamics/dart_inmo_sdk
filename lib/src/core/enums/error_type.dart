import 'package:json_annotation/json_annotation.dart';

enum ErrorType {
  @JsonValue(0)
  validation,
  @JsonValue(1)
  server,
  @JsonValue(2)
  permission,
  @JsonValue(3)
  unknown,
  @JsonValue(4)
  connection,
  @JsonValue(5)
  secureStorage,
  @JsonValue(6)
  db,
  @JsonValue(7)
  external;

  static ErrorType fromHttpStatus(int status) {
    switch (status) {
      case 401:
      case 403:
        return ErrorType.permission;
      case 400:
      case 404:
      case 409:
      case 422:
        return ErrorType.validation;
      case 500:
      case 502:
      case 503:
      case 504:
        return ErrorType.server;
      default:
        return ErrorType.unknown;
    }
  }
}

