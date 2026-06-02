import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/api/models/problem_details.dart';
import 'package:inmo_api_sdk/src/core/errors/api/problem_details_entity.dart';
import 'package:inmo_api_sdk/src/core/errors/api/problem_details_field.dart';
import 'package:inmo_api_sdk/src/core/errors/app/base_error.dart';
import 'package:inmo_api_sdk/src/core/errors/app/error_entity.dart';
import 'package:inmo_api_sdk/src/core/errors/app/error_field.dart';
import 'package:inmo_api_sdk/src/core/errors/app/problem_error.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

/// Maps a single API [ProblemDetails] value to the appropriate [BaseError] subtype.
BaseError baseErrorFromProblemDetails(ProblemDetails detail) {
  if (detail is ProblemDetailsField) {
    return ErrorField.fromProblemDetailsField(detail);
  }
  if (detail is ProblemDetailsEntity) {
    return ErrorEntity.fromProblemDetailsEntity(detail);
  }
  return ProblemError.fromProblemDetails(detail);
}

/// Maps API problem payloads to domain errors (e.g. when using [ResultApi]).
List<BaseError> baseErrorsFromProblemDetails(Iterable<ProblemDetails> details) =>
    details.map(baseErrorFromProblemDetails).toList();

extension ResultApiEitherX<T> on Either<List<ProblemDetails>, T> {
  /// Converts [ResultApi] (`List<ProblemDetails>` on the left) to [Result].
  Either<List<BaseError>, T> toDomainResult() => fold(
        (errors) => Left<List<BaseError>, T>(
              baseErrorsFromProblemDetails(errors),
            ),
        Right.new,
      );
}
