// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class TokenRepo {
  Future<ResultApi<TokenDto>> postTokenGenerate({
    String? email,
  });
  Future<ResultApi<Unit>> postTokenVerify({
    AddVerifyTokenDto? body,
  });
}

class TokenRepoImpl extends BaseRepo implements TokenRepo {
  TokenRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<TokenDto>> postTokenGenerate({
    String? email,
  }) {
    return executeApiCall<TokenDto>(
      apiCall: () => _api.token.postApiV1TokenGenerate(
        email: email,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> postTokenVerify({
    AddVerifyTokenDto? body,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.token.postApiV1TokenVerify(
        body: body,
      ),
    );
  }

}
