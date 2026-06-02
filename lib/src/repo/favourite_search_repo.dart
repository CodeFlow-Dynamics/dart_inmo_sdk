// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class FavouriteSearchRepo {
  Future<ResultApi<FavouriteSearchDto>> postSearchesFavourites({
    CreateFavouriteSearchDto? body,
  });
  Future<ResultApi<FavouriteSearchDto>> getSearchesFavouritesId({
    required String id,
  });
  Future<ResultApi<FavouriteSearchDto>> putSearchesFavouritesId({
    required String id,
    UpdateFavouriteSearchDto? body,
  });
  Future<ResultApi<Unit>> deleteSearchesFavouritesId({
    required String id,
  });
  Future<ResultApi<FavouriteSearchDto>> patchSearchesFavouritesIdPause({
    required String id,
  });
  Future<ResultApi<FavouriteSearchDto>> patchSearchesFavouritesIdResume({
    required String id,
  });
}

class FavouriteSearchRepoImpl extends BaseRepo implements FavouriteSearchRepo {
  FavouriteSearchRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<FavouriteSearchDto>> postSearchesFavourites({
    CreateFavouriteSearchDto? body,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.postApiV1SearchesFavourites(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> getSearchesFavouritesId({
    required String id,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.getApiV1SearchesFavouritesId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> putSearchesFavouritesId({
    required String id,
    UpdateFavouriteSearchDto? body,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.putApiV1SearchesFavouritesId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteSearchesFavouritesId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.favouriteSearch.deleteApiV1SearchesFavouritesId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> patchSearchesFavouritesIdPause({
    required String id,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.patchApiV1SearchesFavouritesIdPause(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> patchSearchesFavouritesIdResume({
    required String id,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.patchApiV1SearchesFavouritesIdResume(
        id: id,
      ),
    );
  }

}
