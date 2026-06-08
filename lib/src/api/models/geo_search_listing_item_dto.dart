// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'search_attributes_dto.dart';
import 'search_offer_dto.dart';

part 'geo_search_listing_item_dto.g.dart';

@JsonSerializable()
class GeoSearchListingItemDto {
  const GeoSearchListingItemDto({
    required this.id,
    required this.title,
    required this.slug,
    required this.highlights,
    required this.relevanceScore,
    required this.promotionTier,
    required this.offers,
    required this.attributes,
    required this.categoryName,
    required this.typeName,
    required this.administrativeDivisionName,
    required this.primaryMediaUrl,
    required this.publisherName,
    required this.createdAt,
    required this.updatedAt,
    required this.latitude,
    required this.longitude,
    required this.distanceKm,
  });
  
  factory GeoSearchListingItemDto.fromJson(Map<String, Object?> json) => _$GeoSearchListingItemDtoFromJson(json);
  
  final String id;
  final String title;
  final String slug;
  final Map<String, String> highlights;
  final double relevanceScore;
  final String promotionTier;
  final List<SearchOfferDto> offers;
  final SearchAttributesDto attributes;
  final String categoryName;
  final String typeName;
  final String administrativeDivisionName;
  final String? primaryMediaUrl;
  final String publisherName;
  final String createdAt;
  final String updatedAt;
  final double? latitude;
  final double? longitude;
  final double? distanceKm;

  Map<String, Object?> toJson() => _$GeoSearchListingItemDtoToJson(this);
}

// Flutter compute serialization functions for GeoSearchListingItemDto
FutureOr<GeoSearchListingItemDto> deserializeGeoSearchListingItemDto(Map<String, dynamic> json) =>
    GeoSearchListingItemDto.fromJson(json);

FutureOr<List<GeoSearchListingItemDto>> deserializeGeoSearchListingItemDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => GeoSearchListingItemDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeGeoSearchListingItemDto(GeoSearchListingItemDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeGeoSearchListingItemDtoList(List<GeoSearchListingItemDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
