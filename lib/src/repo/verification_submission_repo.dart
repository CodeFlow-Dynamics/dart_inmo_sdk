// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class VerificationSubmissionRepo {
  Future<ResultApi<VerificationSubmissionDtoPaginatedResult>> getIdentityVerificationSubmissions({
    String? clientUserId,
    int? status,
    String? reviewerId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<VerificationSubmissionDto>> postIdentityVerificationSubmissions({
    AddVerificationSubmissionDto? body,
  });
  Future<ResultApi<List<VerificationSubmissionHistoryDto>>> getIdentityVerificationSubmissionsIdHistory({
    required String id,
  });
  Future<ResultApi<VerificationSubmissionDto>> getIdentityVerificationSubmissionsId({
    required String id,
  });
  Future<ResultApi<Unit>> deleteIdentityVerificationSubmissionsId({
    required String id,
  });
  Future<ResultApi<VerificationSubmissionDto>> putIdentityVerificationSubmissionsIdResubmit({
    required String id,
    UpdateVerificationSubmissionDto? body,
  });
  Future<ResultApi<VerificationSubmissionDto>> putIdentityVerificationSubmissionsIdReview({
    required String id,
    ReviewVerificationSubmissionDto? body,
  });
}

class VerificationSubmissionRepoImpl extends BaseRepo implements VerificationSubmissionRepo {
  VerificationSubmissionRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<VerificationSubmissionDtoPaginatedResult>> getIdentityVerificationSubmissions({
    String? clientUserId,
    int? status,
    String? reviewerId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<VerificationSubmissionDtoPaginatedResult>(
      apiCall: () => _api.verificationSubmission.getApiV1IdentityVerificationSubmissions(
        clientUserId: clientUserId,
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
  Future<ResultApi<VerificationSubmissionDto>> postIdentityVerificationSubmissions({
    AddVerificationSubmissionDto? body,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.postApiV1IdentityVerificationSubmissions(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<List<VerificationSubmissionHistoryDto>>> getIdentityVerificationSubmissionsIdHistory({
    required String id,
  }) {
    return executeApiCall<List<VerificationSubmissionHistoryDto>>(
      apiCall: () => _api.verificationSubmission.getApiV1IdentityVerificationSubmissionsIdHistory(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<VerificationSubmissionDto>> getIdentityVerificationSubmissionsId({
    required String id,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.getApiV1IdentityVerificationSubmissionsId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteIdentityVerificationSubmissionsId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.verificationSubmission.deleteApiV1IdentityVerificationSubmissionsId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<VerificationSubmissionDto>> putIdentityVerificationSubmissionsIdResubmit({
    required String id,
    UpdateVerificationSubmissionDto? body,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.putApiV1IdentityVerificationSubmissionsIdResubmit(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<VerificationSubmissionDto>> putIdentityVerificationSubmissionsIdReview({
    required String id,
    ReviewVerificationSubmissionDto? body,
  }) {
    return executeApiCall<VerificationSubmissionDto>(
      apiCall: () => _api.verificationSubmission.putApiV1IdentityVerificationSubmissionsIdReview(
        id: id,
        body: body,
      ),
    );
  }

}
