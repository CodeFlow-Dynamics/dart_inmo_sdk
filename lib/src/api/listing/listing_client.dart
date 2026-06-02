// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_listing_media_dto.dart';
import '../models/create_listing_dto.dart';
import '../models/listing_amenity_dto.dart';
import '../models/listing_dto.dart';
import '../models/listing_media_dto.dart';
import '../models/listing_summary_dto_paginated_result.dart';
import '../models/reorder_listing_media_dto.dart';
import '../models/set_listing_amenities_dto.dart';
import '../models/set_listing_location_dto.dart';
import '../models/update_listing_dto.dart';

part 'listing_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class ListingClient {
  factory ListingClient(Dio dio, {String? baseUrl}) = _ListingClient;

  @GET('/api/v1/listings')
  Future<HttpResponse<ListingSummaryDtoPaginatedResult>> getApiV1Listings({
    @Query('PublisherId') String? publisherId,
    @Query('InmoCategoryId') String? inmoCategoryId,
    @Query('InmoTypeId') String? inmoTypeId,
    @Query('AdministrativeDivisionId') String? administrativeDivisionId,
    @Query('OfferType') String? offerType,
    @Query('MinPrice') double? minPrice,
    @Query('MaxPrice') double? maxPrice,
    @Query('CurrencyId') String? currencyId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @POST('/api/v1/listings')
  Future<HttpResponse<ListingDto>> postApiV1Listings({
    @Body() CreateListingDto? body,
  });

  @PUT('/api/v1/listings/{id}')
  Future<HttpResponse<ListingDto>> putApiV1ListingsId({
    @Path('id') required String id,
    @Body() UpdateListingDto? body,
  });

  @DELETE('/api/v1/listings/{id}')
  Future<HttpResponse<void>> deleteApiV1ListingsId({
    @Path('id') required String id,
  });

  @GET('/api/v1/listings/{id}')
  Future<HttpResponse<ListingDto>> getApiV1ListingsId({
    @Path('id') required String id,
  });

  @PUT('/api/v1/listings/{id}/location')
  Future<HttpResponse<ListingDto>> putApiV1ListingsIdLocation({
    @Path('id') required String id,
    @Body() SetListingLocationDto? body,
  });

  @POST('/api/v1/listings/{id}/views')
  Future<HttpResponse<void>> postApiV1ListingsIdViews({
    @Path('id') required String id,
  });

  @PUT('/api/v1/listings/{id}/amenities')
  Future<HttpResponse<List<ListingAmenityDto>>> putApiV1ListingsIdAmenities({
    @Path('id') required String id,
    @Body() SetListingAmenitiesDto? body,
  });

  @POST('/api/v1/listings/{id}/media')
  Future<HttpResponse<ListingMediaDto>> postApiV1ListingsIdMedia({
    @Path('id') required String id,
    @Body() AddListingMediaDto? body,
  });

  @DELETE('/api/v1/listings/{id}/media/{mediaId}')
  Future<HttpResponse<void>> deleteApiV1ListingsIdMediaMediaId({
    @Path('id') required String id,
    @Path('mediaId') required String mediaId,
  });

  @PUT('/api/v1/listings/{id}/media/{mediaId}/primary')
  Future<HttpResponse<void>> putApiV1ListingsIdMediaMediaIdPrimary({
    @Path('id') required String id,
    @Path('mediaId') required String mediaId,
  });

  @PUT('/api/v1/listings/{id}/media/reorder')
  Future<HttpResponse<void>> putApiV1ListingsIdMediaReorder({
    @Path('id') required String id,
    @Body() ReorderListingMediaDto? body,
  });
}
