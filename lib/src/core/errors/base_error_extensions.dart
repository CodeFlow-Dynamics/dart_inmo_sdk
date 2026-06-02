import 'package:inmo_api_sdk/src/core/errors/app/base_error.dart';
import 'package:inmo_api_sdk/src/core/errors/app/error_entity.dart';
import 'package:inmo_api_sdk/src/core/errors/app/error_field.dart';

extension BaseErrorPredicates on BaseError {
  /// Field-level validation error (RFC 7807 payload with `fields`).
  bool get isErrorField => this is ErrorField;

  /// Entity/resource-level error (RFC 7807 payload with `entity`).
  bool get isErrorEntity => this is ErrorEntity;
}
