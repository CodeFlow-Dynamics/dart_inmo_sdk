// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'dart:io' show File;

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class IdentificationRepo {
  Future<ResultApi<IdentificationDto>> postIdentification({
    String? userId,
    String? documentId,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    File? photoObverse,
    File? photoReverse,
  });
  Future<ResultApi<IdentificationDtoPaginatedResult>> getIdentification({
    String? userId,
    String? documentId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<IdentificationDto>> getIdentificationId({
    required String id,
  });
  Future<ResultApi<IdentificationDto>> putIdentificationId({
    required String id,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    File? photoObverse,
    File? photoReverse,
  });
  Future<ResultApi<Unit>> deleteIdentificationId({
    required String id,
  });
}

class IdentificationRepoImpl extends BaseRepo implements IdentificationRepo {
  IdentificationRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<IdentificationDto>> postIdentification({
    String? userId,
    String? documentId,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    File? photoObverse,
    File? photoReverse,
  }) {
    return executeApiCall<IdentificationDto>(
      apiCall: () => _api.identification.postApiV1Identification(
        userId: userId,
        documentId: documentId,
        idNumber: idNumber,
        dateOfBirth: dateOfBirth,
        expiryDate: expiryDate,
        photoObverse: photoObverse,
        photoReverse: photoReverse,
      ),
    );
  }

  @override
  Future<ResultApi<IdentificationDtoPaginatedResult>> getIdentification({
    String? userId,
    String? documentId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<IdentificationDtoPaginatedResult>(
      apiCall: () => _api.identification.getApiV1Identification(
        userId: userId,
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
  Future<ResultApi<IdentificationDto>> getIdentificationId({
    required String id,
  }) {
    return executeApiCall<IdentificationDto>(
      apiCall: () => _api.identification.getApiV1IdentificationId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<IdentificationDto>> putIdentificationId({
    required String id,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    File? photoObverse,
    File? photoReverse,
  }) {
    return executeApiCall<IdentificationDto>(
      apiCall: () => _api.identification.putApiV1IdentificationId(
        id: id,
        idNumber: idNumber,
        dateOfBirth: dateOfBirth,
        expiryDate: expiryDate,
        photoObverse: photoObverse,
        photoReverse: photoReverse,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteIdentificationId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.identification.deleteApiV1IdentificationId(
        id: id,
      ),
    );
  }

}
