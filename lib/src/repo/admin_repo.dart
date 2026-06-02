// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AdminRepo {
  Future<ResultApi<UserDto>> postAdmin({
    AddAdminDto? body,
  });
  Future<ResultApi<UserDto>> putAdminId({
    required String id,
    UpdateAdminDto? body,
  });
  Future<ResultApi<UserDto>> getAdminId({
    required String id,
  });
  Future<ResultApi<Unit>> deleteAdminId({
    required String id,
  });
}

class AdminRepoImpl extends BaseRepo implements AdminRepo {
  AdminRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<UserDto>> postAdmin({
    AddAdminDto? body,
  }) {
    return executeApiCall<UserDto>(
      apiCall: () => _api.admin.postApiV1Admin(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<UserDto>> putAdminId({
    required String id,
    UpdateAdminDto? body,
  }) {
    return executeApiCall<UserDto>(
      apiCall: () => _api.admin.putApiV1AdminId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<UserDto>> getAdminId({
    required String id,
  }) {
    return executeApiCall<UserDto>(
      apiCall: () => _api.admin.getApiV1AdminId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteAdminId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.admin.deleteApiV1AdminId(
        id: id,
      ),
    );
  }

}
