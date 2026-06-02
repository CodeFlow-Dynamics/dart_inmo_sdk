// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class CountryRepo {
  Future<ResultApi<CountryDto>> postCountry({
    AddCountryDto? body,
  });
  Future<ResultApi<ListCountriesResponseDto>> getCountry();
  Future<ResultApi<CountryDto>> putCountryId({
    required String id,
    UpdateCountryDto? body,
  });
  Future<ResultApi<CountryDto>> getCountryId({
    required String id,
  });
  Future<ResultApi<Unit>> deleteCountryId({
    required String id,
  });
  Future<ResultApi<BulkCreateCountriesResponseDto>> postCountryBulk({
    BulkAddCountryDto? body,
  });
}

class CountryRepoImpl extends BaseRepo implements CountryRepo {
  CountryRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<CountryDto>> postCountry({
    AddCountryDto? body,
  }) {
    return executeApiCall<CountryDto>(
      apiCall: () => _api.country.postApiV1Country(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<ListCountriesResponseDto>> getCountry() {
    return executeApiCall<ListCountriesResponseDto>(
      apiCall: () => _api.country.getApiV1Country(),
    );
  }

  @override
  Future<ResultApi<CountryDto>> putCountryId({
    required String id,
    UpdateCountryDto? body,
  }) {
    return executeApiCall<CountryDto>(
      apiCall: () => _api.country.putApiV1CountryId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<CountryDto>> getCountryId({
    required String id,
  }) {
    return executeApiCall<CountryDto>(
      apiCall: () => _api.country.getApiV1CountryId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteCountryId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.country.deleteApiV1CountryId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<BulkCreateCountriesResponseDto>> postCountryBulk({
    BulkAddCountryDto? body,
  }) {
    return executeApiCall<BulkCreateCountriesResponseDto>(
      apiCall: () => _api.country.postApiV1CountryBulk(
        body: body,
      ),
    );
  }

}
