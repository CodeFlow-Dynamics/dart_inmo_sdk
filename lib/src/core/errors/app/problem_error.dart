import 'package:inmo_api_sdk/src/api/models/problem_details.dart';
import 'package:inmo_api_sdk/src/core/errors/app/base_error.dart';
import 'package:inmo_api_sdk/src/core/enums/error_type.dart';

class ProblemError extends BaseError {
  const ProblemError({
    required super.title,
    required super.message,
    required super.type,
  });

  /// Used for errors related to data validation (e.g., form validation, input validation)
  const ProblemError.validation(String title, String message)
    : super(title: title, message: message, type: ErrorType.validation);

  /// Used for errors occurred in use cases or generic server failures
  const ProblemError.server(
    String title,
    String message,
    Object e,
    StackTrace s,
  ) : super(
        title: title,
        message: '$message \n $e \n $s',
        type: ErrorType.unknown,
      );

  /// Used for errors related to network connection
  const ProblemError.connection(String title, String message)
    : super(title: title, message: message, type: ErrorType.connection);

  /// Used for errors related to local storage key–value persistence
  const ProblemError.secureStorage(String title, String message)
    : super(title: title, message: message, type: ErrorType.secureStorage);

  /// Used for errors from third-party services (e.g., Google Maps, Google Sign in)
  const ProblemError.external(String title, String message)
    : super(title: title, message: message, type: ErrorType.external);

  /// Used for mocking errors in tests
  const ProblemError.unknown([String? title, String? message])
    : super(
        title: title ?? 'unknownError',
        message: message ?? 'Unknown error',
        type: ErrorType.unknown,
      );

  /// Used for unknown third‑party errors where a stack trace is useful
  const ProblemError.stackTrace(
    String title,
    String message,
    Object e,
    StackTrace s,
  ) : super(
        title: title,
        message: '$message \n $e \n $s',
        type: ErrorType.unknown,
      );

  /// Used when the app lacks required permission
  const ProblemError.permission(String title, String message)
    : super(title: title, message: message, type: ErrorType.permission);

  factory ProblemError.fromProblemDetails(ProblemDetails problemDetails) {
    return ProblemError(
      title: problemDetails.title ?? 'unknownError',
      message: problemDetails.detail ?? 'Unknown error',
      type: ErrorType.fromHttpStatus(problemDetails.status ?? 500),
    );
  }
}
