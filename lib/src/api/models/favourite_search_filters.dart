// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'favourite_search_filters.g.dart';

@JsonSerializable()
class FavouriteSearchFilters {
  const FavouriteSearchFilters({
    required this.offerType,
    required this.minPrice,
    required this.maxPrice,
    required this.currencyId,
    required this.inmoCategoryId,
    required this.inmoTypeId,
    required this.administrativeDivisionId,
    required this.minBedrooms,
    required this.maxBedrooms,
    required this.minBathrooms,
    required this.maxBathrooms,
    required this.minTotalArea,
    required this.maxTotalArea,
    required this.minBuiltArea,
    required this.maxBuiltArea,
    required this.minLotArea,
    required this.maxLotArea,
    required this.minParkingSpaces,
    required this.isFurnished,
    required this.hasRoadAccess,
    required this.hasUtilities,
    required this.amenityIds,
    required this.isFeatured,
  });
  
  factory FavouriteSearchFilters.fromJson(Map<String, Object?> json) => _$FavouriteSearchFiltersFromJson(json);
  
  final String? offerType;
  final double? minPrice;
  final double? maxPrice;
  final String? currencyId;
  final String? inmoCategoryId;
  final String? inmoTypeId;
  final String? administrativeDivisionId;
  final int? minBedrooms;
  final int? maxBedrooms;
  final int? minBathrooms;
  final int? maxBathrooms;
  final double? minTotalArea;
  final double? maxTotalArea;
  final double? minBuiltArea;
  final double? maxBuiltArea;
  final double? minLotArea;
  final double? maxLotArea;
  final int? minParkingSpaces;
  final bool? isFurnished;
  final bool? hasRoadAccess;
  final bool? hasUtilities;
  final List<String>? amenityIds;
  final bool? isFeatured;

  Map<String, Object?> toJson() => _$FavouriteSearchFiltersToJson(this);
}

// Flutter compute serialization functions for FavouriteSearchFilters
FutureOr<FavouriteSearchFilters> deserializeFavouriteSearchFilters(Map<String, dynamic> json) =>
    FavouriteSearchFilters.fromJson(json);

FutureOr<List<FavouriteSearchFilters>> deserializeFavouriteSearchFiltersList(List<Map<String, dynamic>> json) =>
    json.map((e) => FavouriteSearchFilters.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeFavouriteSearchFilters(FavouriteSearchFilters? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeFavouriteSearchFiltersList(List<FavouriteSearchFilters>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
