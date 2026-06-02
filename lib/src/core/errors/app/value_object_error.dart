import 'package:inmo_api_sdk/src/core/enums/error_type.dart';
import 'package:inmo_api_sdk/src/core/errors/app/error_field.dart';

class ValueObjectDescriptor {
  final String fieldName;
  final String typeUrl;

  const ValueObjectDescriptor(this.fieldName, this.typeUrl);
}

class ValueObjectError {
  static const emptyTitle = 'errorEmpty';
  static const invalidFormatTitle = 'errorInvalidFormat';
  static const invalidLengthTitle = 'errorInvalidLength';
  static const tooShortTitle = 'errorTooShort';
  static const tooLongTitle = 'errorTooLong';
  static const duplicateTitle = 'errorDuplicate';

  static ErrorField empty(ValueObjectDescriptor d) => ErrorField(
        field: d.fieldName,
        title: emptyTitle,
        message: 'Value is required',
        type: ErrorType.validation,
      );

  static ErrorField invalidFormat(
    ValueObjectDescriptor d,
    String message,
  ) =>
      ErrorField(
        field: d.fieldName,
        title: invalidFormatTitle,
        message: 'Value is not valid. $message',
        type: ErrorType.validation,
      );

  static ErrorField invalidLength(ValueObjectDescriptor d, int length) =>
      ErrorField(
        field: d.fieldName,
        title: invalidLengthTitle,
        message: 'Value must be $length characters long',
        type: ErrorType.validation,
      );

  static ErrorField tooShort(ValueObjectDescriptor d, int minLength) =>
      ErrorField(
        field: d.fieldName,
        title: tooShortTitle,
        message: 'Value must be at least $minLength characters long',
        type: ErrorType.validation,
      );

  static ErrorField tooLong(ValueObjectDescriptor d, int maxLength) =>
      ErrorField(
        field: d.fieldName,
        title: tooLongTitle,
        message: 'Value must be at most $maxLength characters long',
        type: ErrorType.validation,
      );

  static ErrorField duplicate(ValueObjectDescriptor d) => ErrorField(
        field: d.fieldName,
        title: duplicateTitle,
        message: 'Value is duplicate',
        type: ErrorType.validation,
      );
}

