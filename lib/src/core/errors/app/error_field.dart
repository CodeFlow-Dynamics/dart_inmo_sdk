import 'package:inmo_api_sdk/src/core/enums/error_type.dart';
import 'package:inmo_api_sdk/src/core/errors/api/problem_details_field.dart';
import 'package:inmo_api_sdk/src/core/errors/app/base_error.dart';

class ErrorField extends BaseError {
  final String field;

  const ErrorField({
    required this.field,
    required super.title,
    required super.message,
    required super.type,
  });

  factory ErrorField.fromProblemDetailsField(
    ProblemDetailsField problemDetails,
  ) {
    return ErrorField(
      field: problemDetails.fields.first,
      title: problemDetails.title ?? 'unknownError',
      message: problemDetails.detail ?? 'Unknown error',
      type: ErrorType.fromHttpStatus(problemDetails.status ?? 500),
    );
  }

  @override
  List<Object?> get props => [...super.props, field];
}