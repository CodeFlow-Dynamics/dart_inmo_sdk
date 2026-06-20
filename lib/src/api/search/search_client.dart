// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/autocomplete_result_dto.dart';
import '../models/geo_search_result_dto.dart';
import '../models/reindex_result_dto.dart';
import '../models/search_listings_result_dto.dart';

part 'search_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class SearchClient {
  factory SearchClient(Dio dio, {String? baseUrl}) = _SearchClient;

  @POST('/api/v1/searches/listings/reindex')
  Future<HttpResponse<ReindexResultDto>> postApiV1SearchesListingsReindex();

  @GET('/api/v1/searches/listings')
  Future<HttpResponse<SearchListingsResultDto>> getApiV1SearchesListings({
    @Query('Q') String? q,
    @Query('OfferType') String? offerType,
    @Query('MinPrice') double? minPrice,
    @Query('MaxPrice') double? maxPrice,
    @Query('CurrencyId') String? currencyId,
    @Query('InmoCategoryId') String? inmoCategoryId,
    @Query('InmoTypeId') String? inmoTypeId,
    @Query('AdministrativeDivisionId') String? administrativeDivisionId,
    @Query('MinBedrooms') int? minBedrooms,
    @Query('MaxBedrooms') int? maxBedrooms,
    @Query('MinBathrooms') int? minBathrooms,
    @Query('MaxBathrooms') int? maxBathrooms,
    @Query('MinTotalArea') double? minTotalArea,
    @Query('MaxTotalArea') double? maxTotalArea,
    @Query('MinBuiltArea') double? minBuiltArea,
    @Query('MaxBuiltArea') double? maxBuiltArea,
    @Query('MinLotArea') double? minLotArea,
    @Query('MaxLotArea') double? maxLotArea,
    @Query('MinParkingSpaces') int? minParkingSpaces,
    @Query('IsFurnished') bool? isFurnished,
    @Query('HasRoadAccess') bool? hasRoadAccess,
    @Query('HasUtilities') bool? hasUtilities,
    @Query('AmenityIds') List<String>? amenityIds,
    @Query('PromotionTier') String? promotionTier,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/searches/listings/geo/rectangular')
  Future<HttpResponse<GeoSearchResultDto>> getApiV1SearchesListingsGeoRectangular({
    @Query('NeLat') double? neLat,
    @Query('NeLng') double? neLng,
    @Query('SwLat') double? swLat,
    @Query('SwLng') double? swLng,
    @Query('Q') String? q,
    @Query('OfferType') String? offerType,
    @Query('MinPrice') double? minPrice,
    @Query('MaxPrice') double? maxPrice,
    @Query('CurrencyId') String? currencyId,
    @Query('InmoCategoryId') String? inmoCategoryId,
    @Query('InmoTypeId') String? inmoTypeId,
    @Query('AdministrativeDivisionId') String? administrativeDivisionId,
    @Query('MinBedrooms') int? minBedrooms,
    @Query('MaxBedrooms') int? maxBedrooms,
    @Query('MinBathrooms') int? minBathrooms,
    @Query('MaxBathrooms') int? maxBathrooms,
    @Query('MinTotalArea') double? minTotalArea,
    @Query('MaxTotalArea') double? maxTotalArea,
    @Query('MinBuiltArea') double? minBuiltArea,
    @Query('MaxBuiltArea') double? maxBuiltArea,
    @Query('MinLotArea') double? minLotArea,
    @Query('MaxLotArea') double? maxLotArea,
    @Query('MinParkingSpaces') int? minParkingSpaces,
    @Query('IsFurnished') bool? isFurnished,
    @Query('HasRoadAccess') bool? hasRoadAccess,
    @Query('HasUtilities') bool? hasUtilities,
    @Query('AmenityIds') List<String>? amenityIds,
    @Query('PromotionTier') String? promotionTier,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/searches/listings/geo/radius')
  Future<HttpResponse<GeoSearchResultDto>> getApiV1SearchesListingsGeoRadius({
    @Query('Lat') double? lat,
    @Query('Lng') double? lng,
    @Query('RadiusKm') double? radiusKm,
    @Query('Q') String? q,
    @Query('OfferType') String? offerType,
    @Query('MinPrice') double? minPrice,
    @Query('MaxPrice') double? maxPrice,
    @Query('CurrencyId') String? currencyId,
    @Query('InmoCategoryId') String? inmoCategoryId,
    @Query('InmoTypeId') String? inmoTypeId,
    @Query('AdministrativeDivisionId') String? administrativeDivisionId,
    @Query('MinBedrooms') int? minBedrooms,
    @Query('MaxBedrooms') int? maxBedrooms,
    @Query('MinBathrooms') int? minBathrooms,
    @Query('MaxBathrooms') int? maxBathrooms,
    @Query('MinTotalArea') double? minTotalArea,
    @Query('MaxTotalArea') double? maxTotalArea,
    @Query('MinBuiltArea') double? minBuiltArea,
    @Query('MaxBuiltArea') double? maxBuiltArea,
    @Query('MinLotArea') double? minLotArea,
    @Query('MaxLotArea') double? maxLotArea,
    @Query('MinParkingSpaces') int? minParkingSpaces,
    @Query('IsFurnished') bool? isFurnished,
    @Query('HasRoadAccess') bool? hasRoadAccess,
    @Query('HasUtilities') bool? hasUtilities,
    @Query('AmenityIds') List<String>? amenityIds,
    @Query('PromotionTier') String? promotionTier,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/searches/listings/autocomplete')
  Future<HttpResponse<AutocompleteResultDto>> getApiV1SearchesListingsAutocomplete({
    @Query('q') String? q,
  });
}
