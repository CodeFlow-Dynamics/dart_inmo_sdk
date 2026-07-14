// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AdministrativeLevelRepo {
  Future<ResultApi<ListAdministrativeLevelsResponseDto>> getAdministrativeLevels({
    String? country,
  });
}

class AdministrativeLevelRepoImpl extends BaseRepo implements AdministrativeLevelRepo {
  AdministrativeLevelRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<ListAdministrativeLevelsResponseDto>> getAdministrativeLevels({
    String? country,
  }) {
    return executeApiCall<ListAdministrativeLevelsResponseDto>(
      apiCall: () => _api.administrativeLevel.getApiV1AdministrativeLevels(
        country: country,
      ),
    );
  }

}
