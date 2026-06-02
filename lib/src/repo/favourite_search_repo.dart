// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class FavouriteSearchRepo {
  Future<ResultApi<FavouriteSearchDto>> postFavouriteSearches({
    CreateFavouriteSearchDto? body,
  });
  Future<ResultApi<FavouriteSearchDto>> getFavouriteSearchesId({
    required String id,
  });
  Future<ResultApi<FavouriteSearchDto>> putFavouriteSearchesId({
    required String id,
    UpdateFavouriteSearchDto? body,
  });
  Future<ResultApi<Unit>> deleteFavouriteSearchesId({
    required String id,
  });
  Future<ResultApi<FavouriteSearchDto>> patchFavouriteSearchesIdPause({
    required String id,
  });
  Future<ResultApi<FavouriteSearchDto>> patchFavouriteSearchesIdResume({
    required String id,
  });
}

class FavouriteSearchRepoImpl extends BaseRepo implements FavouriteSearchRepo {
  FavouriteSearchRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<FavouriteSearchDto>> postFavouriteSearches({
    CreateFavouriteSearchDto? body,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.postApiV1FavouriteSearches(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> getFavouriteSearchesId({
    required String id,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.getApiV1FavouriteSearchesId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> putFavouriteSearchesId({
    required String id,
    UpdateFavouriteSearchDto? body,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.putApiV1FavouriteSearchesId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteFavouriteSearchesId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.favouriteSearch.deleteApiV1FavouriteSearchesId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> patchFavouriteSearchesIdPause({
    required String id,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.patchApiV1FavouriteSearchesIdPause(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteSearchDto>> patchFavouriteSearchesIdResume({
    required String id,
  }) {
    return executeApiCall<FavouriteSearchDto>(
      apiCall: () => _api.favouriteSearch.patchApiV1FavouriteSearchesIdResume(
        id: id,
      ),
    );
  }

}
