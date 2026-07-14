// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class IdentityDocumentRuleRepo {
  Future<ResultApi<DocumentDto>> postIdentityDocumentRules({
    AddDocumentDto? body,
  });
  Future<ResultApi<DocumentDtoPaginatedResult>> getIdentityDocumentRules({
    String? country,
    String? documentType,
    String? validationPattern,
    DateTime? createdFrom,
    DateTime? createdTo,
    DateTime? updatedFrom,
    DateTime? updatedTo,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<BulkCreateDocumentsResponseDto>> postIdentityDocumentRulesBulk({
    BulkAddDocumentsDto? body,
  });
  Future<ResultApi<DocumentDto>> getIdentityDocumentRulesId({
    required String id,
  });
  Future<ResultApi<DocumentDto>> putIdentityDocumentRulesId({
    required String id,
    UpdateDocumentDto? body,
  });
  Future<ResultApi<Unit>> deleteIdentityDocumentRulesId({
    required String id,
  });
}

class IdentityDocumentRuleRepoImpl extends BaseRepo implements IdentityDocumentRuleRepo {
  IdentityDocumentRuleRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<DocumentDto>> postIdentityDocumentRules({
    AddDocumentDto? body,
  }) {
    return executeApiCall<DocumentDto>(
      apiCall: () => _api.identityDocumentRule.postApiV1IdentityDocumentRules(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<DocumentDtoPaginatedResult>> getIdentityDocumentRules({
    String? country,
    String? documentType,
    String? validationPattern,
    DateTime? createdFrom,
    DateTime? createdTo,
    DateTime? updatedFrom,
    DateTime? updatedTo,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<DocumentDtoPaginatedResult>(
      apiCall: () => _api.identityDocumentRule.getApiV1IdentityDocumentRules(
        country: country,
        documentType: documentType,
        validationPattern: validationPattern,
        createdFrom: createdFrom,
        createdTo: createdTo,
        updatedFrom: updatedFrom,
        updatedTo: updatedTo,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<BulkCreateDocumentsResponseDto>> postIdentityDocumentRulesBulk({
    BulkAddDocumentsDto? body,
  }) {
    return executeApiCall<BulkCreateDocumentsResponseDto>(
      apiCall: () => _api.identityDocumentRule.postApiV1IdentityDocumentRulesBulk(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<DocumentDto>> getIdentityDocumentRulesId({
    required String id,
  }) {
    return executeApiCall<DocumentDto>(
      apiCall: () => _api.identityDocumentRule.getApiV1IdentityDocumentRulesId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<DocumentDto>> putIdentityDocumentRulesId({
    required String id,
    UpdateDocumentDto? body,
  }) {
    return executeApiCall<DocumentDto>(
      apiCall: () => _api.identityDocumentRule.putApiV1IdentityDocumentRulesId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteIdentityDocumentRulesId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.identityDocumentRule.deleteApiV1IdentityDocumentRulesId(
        id: id,
      ),
    );
  }

}
