// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class ListingOfferRepo {
  Future<ResultApi<ListingOfferDto>> postListingsListingIdOffers({
    required String listingId,
    AddOfferDto? body,
  });
  Future<ResultApi<ListingOfferDto>> putListingsListingIdOffersOfferId({
    required String listingId,
    required String offerId,
    UpdateOfferDto? body,
  });
  Future<ResultApi<Unit>> deleteListingsListingIdOffersOfferId({
    required String listingId,
    required String offerId,
  });
  Future<ResultApi<ListingOfferDto>> patchListingsListingIdOffersOfferIdStatus({
    required String listingId,
    required String offerId,
    UpdateOfferStatusDto? body,
  });
}

class ListingOfferRepoImpl extends BaseRepo implements ListingOfferRepo {
  ListingOfferRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<ListingOfferDto>> postListingsListingIdOffers({
    required String listingId,
    AddOfferDto? body,
  }) {
    return executeApiCall<ListingOfferDto>(
      apiCall: () => _api.listingOffer.postApiV1ListingsListingIdOffers(
        listingId: listingId,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<ListingOfferDto>> putListingsListingIdOffersOfferId({
    required String listingId,
    required String offerId,
    UpdateOfferDto? body,
  }) {
    return executeApiCall<ListingOfferDto>(
      apiCall: () => _api.listingOffer.putApiV1ListingsListingIdOffersOfferId(
        listingId: listingId,
        offerId: offerId,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteListingsListingIdOffersOfferId({
    required String listingId,
    required String offerId,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.listingOffer.deleteApiV1ListingsListingIdOffersOfferId(
        listingId: listingId,
        offerId: offerId,
      ),
    );
  }

  @override
  Future<ResultApi<ListingOfferDto>> patchListingsListingIdOffersOfferIdStatus({
    required String listingId,
    required String offerId,
    UpdateOfferStatusDto? body,
  }) {
    return executeApiCall<ListingOfferDto>(
      apiCall: () => _api.listingOffer.patchApiV1ListingsListingIdOffersOfferIdStatus(
        listingId: listingId,
        offerId: offerId,
        body: body,
      ),
    );
  }

}
