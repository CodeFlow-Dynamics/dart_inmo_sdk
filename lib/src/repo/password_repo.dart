// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class PasswordRepo {
  Future<ResultApi<TokenDto>> postAuthPasswordsForgot({
    EmailRequestDto? body,
  });
  Future<ResultApi<String>> postAuthPasswordsReset({
    ResetPasswordDto? body,
  });
  Future<ResultApi<String>> postAuthPasswordsChange({
    ChangePasswordDto? body,
  });
}

class PasswordRepoImpl extends BaseRepo implements PasswordRepo {
  PasswordRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<TokenDto>> postAuthPasswordsForgot({
    EmailRequestDto? body,
  }) {
    return executeApiCall<TokenDto>(
      apiCall: () => _api.password.postApiV1AuthPasswordsForgot(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<String>> postAuthPasswordsReset({
    ResetPasswordDto? body,
  }) {
    return executeApiCall<String>(
      apiCall: () => _api.password.postApiV1AuthPasswordsReset(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<String>> postAuthPasswordsChange({
    ChangePasswordDto? body,
  }) {
    return executeApiCall<String>(
      apiCall: () => _api.password.postApiV1AuthPasswordsChange(
        body: body,
      ),
    );
  }

}
