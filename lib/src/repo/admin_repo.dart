// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AdminRepo {
  Future<ResultApi<AdminDto>> postAdmins({
    AddAdminDto? body,
  });
  Future<ResultApi<AdminDto>> putAdminsId({
    required String id,
    UpdateAdminDto? body,
  });
  Future<ResultApi<AdminDto>> getAdminsId({
    required String id,
  });
  Future<ResultApi<Unit>> deleteAdminsId({
    required String id,
  });
  Future<ResultApi<EmployeeProfileDto>> getAdminsProfile();
  Future<ResultApi<Unit>> putAdminsAuthsIdStatus({
    required String id,
    UpdateAuthStatusDto? body,
  });
}

class AdminRepoImpl extends BaseRepo implements AdminRepo {
  AdminRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<AdminDto>> postAdmins({
    AddAdminDto? body,
  }) {
    return executeApiCall<AdminDto>(
      apiCall: () => _api.admin.postApiV1Admins(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<AdminDto>> putAdminsId({
    required String id,
    UpdateAdminDto? body,
  }) {
    return executeApiCall<AdminDto>(
      apiCall: () => _api.admin.putApiV1AdminsId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<AdminDto>> getAdminsId({
    required String id,
  }) {
    return executeApiCall<AdminDto>(
      apiCall: () => _api.admin.getApiV1AdminsId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteAdminsId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.admin.deleteApiV1AdminsId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<EmployeeProfileDto>> getAdminsProfile() {
    return executeApiCall<EmployeeProfileDto>(
      apiCall: () => _api.admin.getApiV1AdminsProfile(),
    );
  }

  @override
  Future<ResultApi<Unit>> putAdminsAuthsIdStatus({
    required String id,
    UpdateAuthStatusDto? body,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.admin.putApiV1AdminsAuthsIdStatus(
        id: id,
        body: body,
      ),
    );
  }

}
