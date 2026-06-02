// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'search_attributes_dto.dart';
import 'search_offer_dto.dart';

part 'search_listing_item_dto.g.dart';

@JsonSerializable()
class SearchListingItemDto {
  const SearchListingItemDto({
    required this.id,
    required this.title,
    required this.slug,
    required this.highlights,
    required this.relevanceScore,
    required this.isFeatured,
    required this.offers,
    required this.attributes,
    required this.categoryName,
    required this.typeName,
    required this.administrativeDivisionName,
    required this.primaryMediaUrl,
    required this.publisherName,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory SearchListingItemDto.fromJson(Map<String, Object?> json) => _$SearchListingItemDtoFromJson(json);
  
  final String id;
  final String title;
  final String slug;
  final Map<String, String> highlights;
  final double relevanceScore;
  final bool isFeatured;
  final List<SearchOfferDto> offers;
  final SearchAttributesDto attributes;
  final String categoryName;
  final String typeName;
  final String administrativeDivisionName;
  final String? primaryMediaUrl;
  final String publisherName;
  final String createdAt;
  final String updatedAt;

  Map<String, Object?> toJson() => _$SearchListingItemDtoToJson(this);
}

// Flutter compute serialization functions for SearchListingItemDto
FutureOr<SearchListingItemDto> deserializeSearchListingItemDto(Map<String, dynamic> json) =>
    SearchListingItemDto.fromJson(json);

FutureOr<List<SearchListingItemDto>> deserializeSearchListingItemDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SearchListingItemDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSearchListingItemDto(SearchListingItemDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSearchListingItemDtoList(List<SearchListingItemDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
