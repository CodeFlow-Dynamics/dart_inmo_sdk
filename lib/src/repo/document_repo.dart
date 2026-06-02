// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class DocumentRepo {
  Future<ResultApi<DocumentDto>> postDocument({
    AddDocumentDto? body,
  });
  Future<ResultApi<DocumentDtoPaginatedResult>> getDocument({
    String? countryId,
    String? documentTypeId,
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
  Future<ResultApi<BulkCreateDocumentsResponseDto>> postDocumentBulk({
    BulkAddDocumentsDto? body,
  });
  Future<ResultApi<DocumentDto>> getDocumentId({
    required String id,
  });
  Future<ResultApi<DocumentDto>> putDocumentId({
    required String id,
    UpdateDocumentDto? body,
  });
  Future<ResultApi<Unit>> deleteDocumentId({
    required String id,
  });
}

class DocumentRepoImpl extends BaseRepo implements DocumentRepo {
  DocumentRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<DocumentDto>> postDocument({
    AddDocumentDto? body,
  }) {
    return executeApiCall<DocumentDto>(
      apiCall: () => _api.document.postApiV1Document(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<DocumentDtoPaginatedResult>> getDocument({
    String? countryId,
    String? documentTypeId,
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
      apiCall: () => _api.document.getApiV1Document(
        countryId: countryId,
        documentTypeId: documentTypeId,
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
  Future<ResultApi<BulkCreateDocumentsResponseDto>> postDocumentBulk({
    BulkAddDocumentsDto? body,
  }) {
    return executeApiCall<BulkCreateDocumentsResponseDto>(
      apiCall: () => _api.document.postApiV1DocumentBulk(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<DocumentDto>> getDocumentId({
    required String id,
  }) {
    return executeApiCall<DocumentDto>(
      apiCall: () => _api.document.getApiV1DocumentId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<DocumentDto>> putDocumentId({
    required String id,
    UpdateDocumentDto? body,
  }) {
    return executeApiCall<DocumentDto>(
      apiCall: () => _api.document.putApiV1DocumentId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteDocumentId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.document.deleteApiV1DocumentId(
        id: id,
      ),
    );
  }

}
