// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'listing_amenity_dto.dart';
import 'listing_attribute_dto.dart';
import 'listing_media_dto.dart';
import 'listing_offer_dto.dart';
import 'listing_publisher_summary_dto.dart';

part 'listing_dto.g.dart';

@JsonSerializable()
class ListingDto {
  const ListingDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.publisherId,
    required this.propertyId,
    required this.propertyCategory,
    required this.propertyType,
    required this.administrativeDivisionId,
    required this.title,
    required this.slug,
    required this.description,
    required this.status,
    required this.street,
    required this.postalCode,
    required this.latitude,
    required this.longitude,
    required this.promotionTier,
    required this.viewCount,
    required this.offers,
    required this.attributes,
    required this.media,
    required this.amenities,
    required this.publisher,
    required this.categoryName,
    required this.typeName,
    required this.administrativeDivisionName,
  });
  
  factory ListingDto.fromJson(Map<String, Object?> json) => _$ListingDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String publisherId;
  final String propertyId;
  final String propertyCategory;
  final String propertyType;
  final String? administrativeDivisionId;
  final String title;
  final String slug;
  final String? description;
  final String status;
  final String? street;
  final String? postalCode;
  final double? latitude;
  final double? longitude;
  final String promotionTier;
  final int viewCount;
  final List<ListingOfferDto> offers;
  final List<ListingAttributeDto>? attributes;
  final List<ListingMediaDto>? media;
  final List<ListingAmenityDto>? amenities;
  final ListingPublisherSummaryDto publisher;
  final String? categoryName;
  final String? typeName;
  final String? administrativeDivisionName;

  Map<String, Object?> toJson() => _$ListingDtoToJson(this);
}

// Flutter compute serialization functions for ListingDto
FutureOr<ListingDto> deserializeListingDto(Map<String, dynamic> json) =>
    ListingDto.fromJson(json);

FutureOr<List<ListingDto>> deserializeListingDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingDto(ListingDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingDtoList(List<ListingDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
