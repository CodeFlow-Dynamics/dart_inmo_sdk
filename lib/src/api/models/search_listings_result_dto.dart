// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'search_facets_dto.dart';
import 'search_listing_item_dto.dart';

part 'search_listings_result_dto.g.dart';

@JsonSerializable()
class SearchListingsResultDto {
  const SearchListingsResultDto({
    required this.items,
    required this.facets,
    required this.totalCount,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPreviousPage,
    required this.nextCursor,
    required this.previousCursor,
  });
  
  factory SearchListingsResultDto.fromJson(Map<String, Object?> json) => _$SearchListingsResultDtoFromJson(json);
  
  final List<SearchListingItemDto> items;
  final SearchFacetsDto facets;
  final int totalCount;
  final int totalPages;
  final bool hasNextPage;
  final bool hasPreviousPage;
  final String? nextCursor;
  final String? previousCursor;

  Map<String, Object?> toJson() => _$SearchListingsResultDtoToJson(this);
}

// Flutter compute serialization functions for SearchListingsResultDto
FutureOr<SearchListingsResultDto> deserializeSearchListingsResultDto(Map<String, dynamic> json) =>
    SearchListingsResultDto.fromJson(json);

FutureOr<List<SearchListingsResultDto>> deserializeSearchListingsResultDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SearchListingsResultDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSearchListingsResultDto(SearchListingsResultDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSearchListingsResultDtoList(List<SearchListingsResultDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
