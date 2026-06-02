import 'package:inmo_api_sdk/src/core/errors/app/problem_error.dart';

class ConnectionError {
  static const ProblemError noInternetConnection = ProblemError.connection(
    'errorNoInternetConnection',
    'No internet connection',
  );
  static const ProblemError backendIsUnavailable = ProblemError.connection(
    'errorBackendIsUnavailable',
    'Backend is unavailable',
  );
  static const ProblemError connectionFailed = ProblemError.connection(
    'errorConnectionFailed',
    'Connection failed',
  );
  static const ProblemError tooManyRequests = ProblemError.connection(
    'errorTooManyRequests',
    'Too many requests',
  );
}
