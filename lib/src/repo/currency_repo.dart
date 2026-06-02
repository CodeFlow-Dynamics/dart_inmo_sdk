// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class CurrencyRepo {
  Future<ResultApi<List<CurrencyDto>>> getCurrencies();
  Future<ResultApi<CurrencyDto>> getCurrenciesId({
    required String id,
  });
}

class CurrencyRepoImpl extends BaseRepo implements CurrencyRepo {
  CurrencyRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<List<CurrencyDto>>> getCurrencies() {
    return executeApiCall<List<CurrencyDto>>(
      apiCall: () => _api.currency.getApiV1Currencies(),
    );
  }

  @override
  Future<ResultApi<CurrencyDto>> getCurrenciesId({
    required String id,
  }) {
    return executeApiCall<CurrencyDto>(
      apiCall: () => _api.currency.getApiV1CurrenciesId(
        id: id,
      ),
    );
  }

}
