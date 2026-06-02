// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'geo_cluster_dto.dart';
import 'geo_search_listing_item_dto.dart';

part 'geo_search_result_dto.g.dart';

@JsonSerializable()
class GeoSearchResultDto {
  const GeoSearchResultDto({
    required this.items,
    required this.clusters,
    required this.totalCount,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPreviousPage,
    required this.nextCursor,
    required this.previousCursor,
  });
  
  factory GeoSearchResultDto.fromJson(Map<String, Object?> json) => _$GeoSearchResultDtoFromJson(json);
  
  final List<GeoSearchListingItemDto> items;
  final List<GeoClusterDto> clusters;
  final int totalCount;
  final int totalPages;
  final bool hasNextPage;
  final bool hasPreviousPage;
  final String? nextCursor;
  final String? previousCursor;

  Map<String, Object?> toJson() => _$GeoSearchResultDtoToJson(this);
}

// Flutter compute serialization functions for GeoSearchResultDto
FutureOr<GeoSearchResultDto> deserializeGeoSearchResultDto(Map<String, dynamic> json) =>
    GeoSearchResultDto.fromJson(json);

FutureOr<List<GeoSearchResultDto>> deserializeGeoSearchResultDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => GeoSearchResultDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeGeoSearchResultDto(GeoSearchResultDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeGeoSearchResultDtoList(List<GeoSearchResultDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
