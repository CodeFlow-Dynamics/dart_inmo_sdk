// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class IdentificationRepo {
  Future<ResultApi<IdentificationDto>> postIdentityIdentifications({
    AddIdentificationDto? body,
  });
  Future<ResultApi<IdentificationDtoPaginatedResult>> getIdentityIdentifications({
    String? clientUserId,
    String? documentId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<IdentificationDto>> getIdentityIdentificationsId({
    required String id,
  });
  Future<ResultApi<IdentificationDto>> putIdentityIdentificationsId({
    required String id,
    UpdateIdentificationDto? body,
  });
  Future<ResultApi<Unit>> deleteIdentityIdentificationsId({
    required String id,
  });
}

class IdentificationRepoImpl extends BaseRepo implements IdentificationRepo {
  IdentificationRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<IdentificationDto>> postIdentityIdentifications({
    AddIdentificationDto? body,
  }) {
    return executeApiCall<IdentificationDto>(
      apiCall: () => _api.identification.postApiV1IdentityIdentifications(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<IdentificationDtoPaginatedResult>> getIdentityIdentifications({
    String? clientUserId,
    String? documentId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<IdentificationDtoPaginatedResult>(
      apiCall: () => _api.identification.getApiV1IdentityIdentifications(
        clientUserId: clientUserId,
        documentId: documentId,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<IdentificationDto>> getIdentityIdentificationsId({
    required String id,
  }) {
    return executeApiCall<IdentificationDto>(
      apiCall: () => _api.identification.getApiV1IdentityIdentificationsId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<IdentificationDto>> putIdentityIdentificationsId({
    required String id,
    UpdateIdentificationDto? body,
  }) {
    return executeApiCall<IdentificationDto>(
      apiCall: () => _api.identification.putApiV1IdentityIdentificationsId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteIdentityIdentificationsId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.identification.deleteApiV1IdentityIdentificationsId(
        id: id,
      ),
    );
  }

}
