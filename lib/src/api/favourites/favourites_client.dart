// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/favourite_listing_dto.dart';
import '../models/favourite_listing_dto_paginated_result.dart';

part 'favourites_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class FavouritesClient {
  factory FavouritesClient(Dio dio, {String? baseUrl}) = _FavouritesClient;

  @POST('/api/v1/listings/favourites/{listingId}')
  Future<HttpResponse<FavouriteListingDto>> postApiV1ListingsFavouritesListingId({
    @Path('listingId') required String listingId,
  });

  @DELETE('/api/v1/listings/favourites/{listingId}')
  Future<HttpResponse<void>> deleteApiV1ListingsFavouritesListingId({
    @Path('listingId') required String listingId,
  });

  @GET('/api/v1/listings/favourites')
  Future<HttpResponse<FavouriteListingDtoPaginatedResult>> getApiV1ListingsFavourites({
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });
}
