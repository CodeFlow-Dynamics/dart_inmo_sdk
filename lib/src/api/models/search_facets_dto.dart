// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'facet_count_dto.dart';

part 'search_facets_dto.g.dart';

@JsonSerializable()
class SearchFacetsDto {
  const SearchFacetsDto({
    required this.categoryName,
    required this.typeName,
    required this.offerType,
    required this.administrativeDivisionName,
  });
  
  factory SearchFacetsDto.fromJson(Map<String, Object?> json) => _$SearchFacetsDtoFromJson(json);
  
  final List<FacetCountDto> categoryName;
  final List<FacetCountDto> typeName;
  final List<FacetCountDto> offerType;
  final List<FacetCountDto> administrativeDivisionName;

  Map<String, Object?> toJson() => _$SearchFacetsDtoToJson(this);
}

// Flutter compute serialization functions for SearchFacetsDto
FutureOr<SearchFacetsDto> deserializeSearchFacetsDto(Map<String, dynamic> json) =>
    SearchFacetsDto.fromJson(json);

FutureOr<List<SearchFacetsDto>> deserializeSearchFacetsDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SearchFacetsDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSearchFacetsDto(SearchFacetsDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSearchFacetsDtoList(List<SearchFacetsDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
