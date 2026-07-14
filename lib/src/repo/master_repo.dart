// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class MasterRepo {
  Future<ResultApi<SignUpUserWithEmailDto>> postAuthBootstrapMaster({
    SignUpAdminDto? body,
  });
}

class MasterRepoImpl extends BaseRepo implements MasterRepo {
  MasterRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<SignUpUserWithEmailDto>> postAuthBootstrapMaster({
    SignUpAdminDto? body,
  }) {
    return executeApiCall<SignUpUserWithEmailDto>(
      apiCall: () => _api.master.postApiV1AuthBootstrapMaster(
        body: body,
      ),
    );
  }

}
