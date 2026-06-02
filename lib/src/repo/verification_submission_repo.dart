// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'dart:io' show File;

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class VerificationSubmissionRepo {
  Future<ResultApi<VerificationSubmissionDtoPaginatedResult>> getVerificationSubmission({
    String? userId,
    int? status,
    String? reviewerId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<VerificationSubmissionDto>> postVerificationSubmission({
    String? userId,
    String? documentId,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    String? userNotes,
    File? photoObverse,
    File? photoReverse,
  });
  Future<ResultApi<List<VerificationSubmissionHistoryDto>>> getVerificationSubmissionIdHistory({
    required String id,
  });
  Future<ResultApi<VerificationSubmissionDto>> getVerificationSubmissionId({
    required String id,
  });
  Future<ResultApi<Unit>> deleteVerificationSubmissionId({
    required String id,
  });
  Future<ResultApi<VerificationSubmissionDto>> putVerificationSubmissionIdResubmit({
    required String id,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    String? userNotes,
    File? photoObverse,
    File? photoReverse,
  });
  Future<ResultApi<VerificationSubmissionDto>> putVerificationSubmissionIdReview({
    required String id,
    ReviewVerificationSubmissionDto? body,
  });
}

class VerificationSubmissionRepoImpl extends BaseRepo implements VerificationSubmissionRepo {
  VerificationSubmissionRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<VerificationSubmissionDtoPaginatedResult>> getVerificationSubmission({
    String? userId,
    int? status,
    String? reviewerId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<VerificationSubmissionDtoPaginatedResult>(
      apiCall: () => _api.verificationSubmission.getApiV1VerificationSubmission(
        userId: userId,
        status: status,
        reviewerId: reviewerId,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<VerificationSubmissionDto>> postVerificationSubmission({
    String? userId,
    String? documentId,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    String? userNotes,
    File? photoObverse,
    File? photoReverse,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.postApiV1VerificationSubmission(
        userId: userId,
        documentId: documentId,
        idNumber: idNumber,
        dateOfBirth: dateOfBirth,
        expiryDate: expiryDate,
        userNotes: userNotes,
        photoObverse: photoObverse,
        photoReverse: photoReverse,
      ),
    );
  }

  @override
  Future<ResultApi<List<VerificationSubmissionHistoryDto>>> getVerificationSubmissionIdHistory({
    required String id,
  }) {
    return executeApiCall<List<VerificationSubmissionHistoryDto>>(
      apiCall: () => _api.verificationSubmission.getApiV1VerificationSubmissionIdHistory(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<VerificationSubmissionDto>> getVerificationSubmissionId({
    required String id,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.getApiV1VerificationSubmissionId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteVerificationSubmissionId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.verificationSubmission.deleteApiV1VerificationSubmissionId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<VerificationSubmissionDto>> putVerificationSubmissionIdResubmit({
    required String id,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    String? userNotes,
    File? photoObverse,
    File? photoReverse,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.putApiV1VerificationSubmissionIdResubmit(
        id: id,
        idNumber: idNumber,
        dateOfBirth: dateOfBirth,
        expiryDate: expiryDate,
        userNotes: userNotes,
        photoObverse: photoObverse,
        photoReverse: photoReverse,
      ),
    );
  }

  @override
  Future<ResultApi<VerificationSubmissionDto>> putVerificationSubmissionIdReview({
    required String id,
    ReviewVerificationSubmissionDto? body,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.putApiV1VerificationSubmissionIdReview(
        id: id,
        body: body,
      ),
    );
  }

}
