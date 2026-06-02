// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class HealthRepo {
  Future<ResultApi<Unit>> getHealth();
}

class HealthRepoImpl extends BaseRepo implements HealthRepo {
  HealthRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<Unit>> getHealth() {
    return executeApiCall<Unit>(
      apiCall: () => _api.health.getApiV1Health(),
    );
  }

}
