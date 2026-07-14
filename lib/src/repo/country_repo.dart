// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class CountryRepo {
  Future<ResultApi<ListCountriesResponseDto>> getCountry();
  Future<ResultApi<CountryDto>> getCountryIsoCode({
    required String isoCode,
  });
}

class CountryRepoImpl extends BaseRepo implements CountryRepo {
  CountryRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<ListCountriesResponseDto>> getCountry() {
    return executeApiCall<ListCountriesResponseDto>(
      apiCall: () => _api.country.getApiV1Country(),
    );
  }

  @override
  Future<ResultApi<CountryDto>> getCountryIsoCode({
    required String isoCode,
  }) {
    return executeApiCall<CountryDto>(
      apiCall: () => _api.country.getApiV1CountryIsoCode(
        isoCode: isoCode,
      ),
    );
  }

}
