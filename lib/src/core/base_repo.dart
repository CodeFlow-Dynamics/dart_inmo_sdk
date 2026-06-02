import 'dart:io' show HttpStatus;
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/inmo_api_sdk.dart';
import 'package:retrofit/retrofit.dart';

abstract class BaseRepo {
  /// Executes an API call with standardized error handling
  ///
  /// [apiCall] is the actual API call function to execute
  /// Returns a [ResultApi] containing either the successful response data or error details
  Future<ResultApi<T>> executeApiCall<T>({
    required Future<HttpResponse<dynamic>> Function() apiCall,
    T Function(dynamic)? mapResponse,
  }) async {
    try {
      final response = await apiCall();
      final statusCode = response.response.statusCode ?? 0;

      if (statusCode >= HttpStatus.ok && statusCode < 300) {
        return _handleSuccessResponse<T>(response, mapResponse);
      }

      final data = response.response.data;

      throw DioException(
        requestOptions: response.response.requestOptions,
        error: data is Map<String, dynamic>
            ? ProblemDetails.fromJson(_normalizeProblemJson(data))
            : data,
        type: DioExceptionType.badResponse,
      );
    } on DioException catch (e, s) {
      return _handleDioException<T>(e, s);
    }
  }

  ResultApi<T> _handleSuccessResponse<T>(
    HttpResponse<dynamic> response,
    T Function(dynamic)? mapResponse,
  ) {
    if (T == Unit) {
      return Right(unit as T);
    }
    return Right(
      mapResponse != null ? mapResponse(response.data) : response.data as T,
    );
  }

  ResultApi<T> _handleDioException<T>(DioException e, StackTrace s) {
    // Handle errors set by interceptors (e.g., OfflineInterceptor)
    if (e.error is ProblemError) {
      final error = e.error as ProblemError;
      return Left([
        ProblemDetails(
          type: error.type.name,
          title: error.title,
          status: null,
          detail: error.message,
          instance: null,
        ),
      ]);
    }

    // Handle connection-level failures (timeout, unreachable, etc.)
    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.connectionTimeout) {
      return Left([
        ProblemDetails(
          type: ErrorType.connection.name,
          title: ConnectionError.connectionFailed.title,
          status: null,
          detail: ConnectionError.connectionFailed.message,
          instance: null,
        ),
      ]);
    }

    var data = e.response?.data;

    // Decode string body to JSON if possible
    if (data is String) {
      try {
        data = jsonDecode(data);
      } catch (_) {
        // Not JSON, leave as-is
      }
    }

    // List of validation ProblemDetails with Fields
    if (data is List && data.isNotEmpty) {
      final first = data.first;
      if (first is Map<String, dynamic>) {
        final problem = ProblemDetailsField.fromJson(
          _normalizeProblemJson(first),
        );
        return Left([problem]);
      }
    }

    // Single ProblemDetails with Fields or Entity or plain ProblemDetails
    if (data is Map<String, dynamic>) {
      final normalized = _normalizeProblemJson(data);

      final hasFields =
          normalized['Fields'] is List || normalized['fields'] is List;
      final hasEntity =
          normalized['Entity'] is String || normalized['entity'] is String;

      if (hasFields) {
        final problem = ProblemDetailsField.fromJson(normalized);
        return Left([problem]);
      }

      if (hasEntity) {
        final problem = ProblemDetailsEntity.fromJson(normalized);
        return Left([problem]);
      }

      final problem = ProblemDetails.fromJson(normalized);
      return Left([problem]);
    }

    throw const ProblemError(
      title: 'unknownServerError',
      message: 'Unknown server error',
      type: ErrorType.unknown,
    );
  }

  Map<String, dynamic> _normalizeProblemJson(Map<String, dynamic> json) {
    // Normalize legacy / variant keys from API payloads into the shapes
    // expected by our ProblemDetails* models.
    final normalized = Map<String, dynamic>.from(json);

    // Normalize Fields -> fields (for ProblemDetailsField)
    if (normalized.containsKey('Fields') && !normalized.containsKey('fields')) {
      normalized['fields'] = normalized['Fields'];
    }

    // Normalize Entity -> entity (for ProblemDetailsEntity)
    if (normalized.containsKey('Entity') && !normalized.containsKey('entity')) {
      normalized['entity'] = normalized['Entity'];
    }

    return normalized;
  }
}
