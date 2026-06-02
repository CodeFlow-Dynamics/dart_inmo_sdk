// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AuthSecurityRepo {
  Future<ResultApi<AuthSecurityDto>> getAuthSecurityUserUserId({
    required String userId,
  });
}

class AuthSecurityRepoImpl extends BaseRepo implements AuthSecurityRepo {
  AuthSecurityRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<AuthSecurityDto>> getAuthSecurityUserUserId({
    required String userId,
  }) {
    return executeApiCall<AuthSecurityDto>(
      apiCall: () => _api.authSecurity.getApiV1AuthSecurityUserUserId(
        userId: userId,
      ),
    );
  }

}
