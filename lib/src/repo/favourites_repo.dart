// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class FavouritesRepo {
  Future<ResultApi<FavouriteListingDto>> postListingsFavouritesListingId({
    required String listingId,
  });
  Future<ResultApi<Unit>> deleteListingsFavouritesListingId({
    required String listingId,
  });
  Future<ResultApi<FavouriteListingDtoPaginatedResult>> getListingsFavourites({
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
}

class FavouritesRepoImpl extends BaseRepo implements FavouritesRepo {
  FavouritesRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<FavouriteListingDto>> postListingsFavouritesListingId({
    required String listingId,
  }) {
    return executeApiCall<FavouriteListingDto>(
      apiCall: () => _api.favourites.postApiV1ListingsFavouritesListingId(
        listingId: listingId,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteListingsFavouritesListingId({
    required String listingId,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.favourites.deleteApiV1ListingsFavouritesListingId(
        listingId: listingId,
      ),
    );
  }

  @override
  Future<ResultApi<FavouriteListingDtoPaginatedResult>> getListingsFavourites({
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<FavouriteListingDtoPaginatedResult>(
      apiCall: () => _api.favourites.getApiV1ListingsFavourites(
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

}
