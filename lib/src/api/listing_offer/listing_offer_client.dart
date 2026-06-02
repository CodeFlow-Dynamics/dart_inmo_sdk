// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_offer_dto.dart';
import '../models/listing_offer_dto.dart';
import '../models/update_offer_dto.dart';
import '../models/update_offer_status_dto.dart';

part 'listing_offer_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class ListingOfferClient {
  factory ListingOfferClient(Dio dio, {String? baseUrl}) = _ListingOfferClient;

  @POST('/api/v1/listings/{listingId}/offers')
  Future<HttpResponse<ListingOfferDto>> postApiV1ListingsListingIdOffers({
    @Path('listingId') required String listingId,
    @Body() AddOfferDto? body,
  });

  @PUT('/api/v1/listings/{listingId}/offers/{offerId}')
  Future<HttpResponse<ListingOfferDto>> putApiV1ListingsListingIdOffersOfferId({
    @Path('listingId') required String listingId,
    @Path('offerId') required String offerId,
    @Body() UpdateOfferDto? body,
  });

  @DELETE('/api/v1/listings/{listingId}/offers/{offerId}')
  Future<HttpResponse<void>> deleteApiV1ListingsListingIdOffersOfferId({
    @Path('listingId') required String listingId,
    @Path('offerId') required String offerId,
  });

  @PATCH('/api/v1/listings/{listingId}/offers/{offerId}/status')
  Future<HttpResponse<ListingOfferDto>> patchApiV1ListingsListingIdOffersOfferIdStatus({
    @Path('listingId') required String listingId,
    @Path('offerId') required String offerId,
    @Body() UpdateOfferStatusDto? body,
  });
}
