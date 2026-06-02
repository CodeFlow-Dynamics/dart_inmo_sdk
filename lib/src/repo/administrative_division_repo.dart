// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AdministrativeDivisionRepo {
  Future<ResultApi<AdministrativeDivisionDtoPaginatedResult>> getAdministrativeDivisions({
    String? countryId,
    String? parentId,
    String? levelId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<SearchAdministrativeDivisionsByNameResultDto>> getAdministrativeDivisionsSearch({
    String? countryId,
    String? name,
  });
  Future<ResultApi<AdministrativeDivisionDto>> getAdministrativeDivisionsId({
    required String id,
  });
}

class AdministrativeDivisionRepoImpl extends BaseRepo implements AdministrativeDivisionRepo {
  AdministrativeDivisionRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<AdministrativeDivisionDtoPaginatedResult>> getAdministrativeDivisions({
    String? countryId,
    String? parentId,
    String? levelId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<AdministrativeDivisionDtoPaginatedResult>(
      apiCall: () => _api.administrativeDivision.getApiV1AdministrativeDivisions(
        countryId: countryId,
        parentId: parentId,
        levelId: levelId,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<SearchAdministrativeDivisionsByNameResultDto>> getAdministrativeDivisionsSearch({
    String? countryId,
    String? name,
  }) {
    return executeApiCall<SearchAdministrativeDivisionsByNameResultDto>(
      apiCall: () => _api.administrativeDivision.getApiV1AdministrativeDivisionsSearch(
        countryId: countryId,
        name: name,
      ),
    );
  }

  @override
  Future<ResultApi<AdministrativeDivisionDto>> getAdministrativeDivisionsId({
    required String id,
  }) {
    return executeApiCall<AdministrativeDivisionDto>(
      apiCall: () => _api.administrativeDivision.getApiV1AdministrativeDivisionsId(
        id: id,
      ),
    );
  }

}
