// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class PasswordRepo {
  Future<ResultApi<TokenDto>> postPasswordForgotEmail({
    required String email,
  });
  Future<ResultApi<String>> postPasswordReset({
    ResetPasswordDto? body,
  });
  Future<ResultApi<String>> postPasswordChange({
    ChangePasswordDto? body,
  });
}

class PasswordRepoImpl extends BaseRepo implements PasswordRepo {
  PasswordRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<TokenDto>> postPasswordForgotEmail({
    required String email,
  }) {
    return executeApiCall<TokenDto>(
      apiCall: () => _api.password.postApiV1PasswordForgotEmail(
        email: email,
      ),
    );
  }

  @override
  Future<ResultApi<String>> postPasswordReset({
    ResetPasswordDto? body,
  }) {
    return executeApiCall<String>(
      apiCall: () => _api.password.postApiV1PasswordReset(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<String>> postPasswordChange({
    ChangePasswordDto? body,
  }) {
    return executeApiCall<String>(
      apiCall: () => _api.password.postApiV1PasswordChange(
        body: body,
      ),
    );
  }

}
