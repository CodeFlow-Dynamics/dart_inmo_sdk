import 'package:inmo_api_sdk/src/core/enums/error_type.dart';
import 'package:inmo_api_sdk/src/core/errors/app/base_error.dart';
import 'package:inmo_api_sdk/src/core/errors/api/problem_details_entity.dart';

class ErrorEntity extends BaseError {
  final String entity;

  const ErrorEntity({
    required this.entity,
    required super.title,
    required super.message,
    required super.type,
  });

  factory ErrorEntity.fromProblemDetailsEntity(
    ProblemDetailsEntity problemDetails,
  ) {
    return ErrorEntity(
      entity: problemDetails.entity,
      title: problemDetails.title ?? 'unknownError',
      message: problemDetails.detail ?? 'Unknown error',
      type: ErrorType.fromHttpStatus(problemDetails.status ?? 500),
    );
  }

  @override
  List<Object?> get props => [...super.props, entity];
}
