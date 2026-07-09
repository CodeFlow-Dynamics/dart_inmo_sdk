// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class EmailVerificationRepo {
  Future<ResultApi<TokenDto>> postAuthEmailVerifications({
    EmailRequestDto? body,
  });
  Future<ResultApi<Unit>> postAuthEmailVerificationsConfirm({
    AddVerifyTokenDto? body,
  });
}

class EmailVerificationRepoImpl extends BaseRepo implements EmailVerificationRepo {
  EmailVerificationRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<TokenDto>> postAuthEmailVerifications({
    EmailRequestDto? body,
  }) {
    return executeApiCall<TokenDto>(
      apiCall: () => _api.emailVerification.postApiV1AuthEmailVerifications(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> postAuthEmailVerificationsConfirm({
    AddVerifyTokenDto? body,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.emailVerification.postApiV1AuthEmailVerificationsConfirm(
        body: body,
      ),
    );
  }

}
