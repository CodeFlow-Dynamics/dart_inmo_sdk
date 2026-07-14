// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'dart:io' show File;

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class ListingRepo {
  Future<ResultApi<ListingSummaryDtoPaginatedResult>> getListings({
    String? publisherId,
    String? propertyCategory,
    String? propertyType,
    String? administrativeDivisionId,
    String? offerType,
    double? minPrice,
    double? maxPrice,
    String? currency,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<ListingDto>> postListings({
    CreateListingDto? body,
  });
  Future<ResultApi<ListingDto>> putListingsId({
    required String id,
    UpdateListingDto? body,
  });
  Future<ResultApi<Unit>> deleteListingsId({
    required String id,
  });
  Future<ResultApi<ListingDto>> getListingsId({
    required String id,
  });
  Future<ResultApi<Unit>> postListingsIdViews({
    required String id,
  });
  Future<ResultApi<ListingMediaDto>> postListingsIdMedia({
    required String id,
    File? file,
    String? mediaType,
    String? caption,
    int? sortOrder,
    String? displayRole,
  });
  Future<ResultApi<Unit>> deleteListingsIdMediaMediaId({
    required String id,
    required String mediaId,
  });
  Future<ResultApi<Unit>> putListingsIdMediaMediaIdPrimary({
    required String id,
    required String mediaId,
  });
  Future<ResultApi<Unit>> putListingsIdMediaReorder({
    required String id,
    ReorderListingMediaDto? body,
  });
}

class ListingRepoImpl extends BaseRepo implements ListingRepo {
  ListingRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<ListingSummaryDtoPaginatedResult>> getListings({
    String? publisherId,
    String? propertyCategory,
    String? propertyType,
    String? administrativeDivisionId,
    String? offerType,
    double? minPrice,
    double? maxPrice,
    String? currency,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<ListingSummaryDtoPaginatedResult>(
      apiCall: () => _api.listing.getApiV1Listings(
        publisherId: publisherId,
        propertyCategory: propertyCategory,
        propertyType: propertyType,
        administrativeDivisionId: administrativeDivisionId,
        offerType: offerType,
        minPrice: minPrice,
        maxPrice: maxPrice,
        currency: currency,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<ListingDto>> postListings({
    CreateListingDto? body,
  }) {
    return executeApiCall<ListingDto>(
      apiCall: () => _api.listing.postApiV1Listings(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<ListingDto>> putListingsId({
    required String id,
    UpdateListingDto? body,
  }) {
    return executeApiCall<ListingDto>(
      apiCall: () => _api.listing.putApiV1ListingsId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteListingsId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.listing.deleteApiV1ListingsId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<ListingDto>> getListingsId({
    required String id,
  }) {
    return executeApiCall<ListingDto>(
      apiCall: () => _api.listing.getApiV1ListingsId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> postListingsIdViews({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.listing.postApiV1ListingsIdViews(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<ListingMediaDto>> postListingsIdMedia({
    required String id,
    File? file,
    String? mediaType,
    String? caption,
    int? sortOrder,
    String? displayRole,
  }) {
    return executeApiCall<ListingMediaDto>(
      apiCall: () => _api.listing.postApiV1ListingsIdMedia(
        id: id,
        file: file,
        mediaType: mediaType,
        caption: caption,
        sortOrder: sortOrder,
        displayRole: displayRole,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteListingsIdMediaMediaId({
    required String id,
    required String mediaId,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.listing.deleteApiV1ListingsIdMediaMediaId(
        id: id,
        mediaId: mediaId,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> putListingsIdMediaMediaIdPrimary({
    required String id,
    required String mediaId,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.listing.putApiV1ListingsIdMediaMediaIdPrimary(
        id: id,
        mediaId: mediaId,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> putListingsIdMediaReorder({
    required String id,
    ReorderListingMediaDto? body,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.listing.putApiV1ListingsIdMediaReorder(
        id: id,
        body: body,
      ),
    );
  }

}
