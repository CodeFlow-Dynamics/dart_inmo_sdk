// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'search_attributes_dto.g.dart';

@JsonSerializable()
class SearchAttributesDto {
  const SearchAttributesDto({
    required this.bedrooms,
    required this.bathrooms,
    required this.halfBathrooms,
    required this.parkingSpaces,
    required this.totalArea,
    required this.builtArea,
    required this.lotArea,
    required this.yearBuilt,
    required this.isFurnished,
    required this.hasRoadAccess,
    required this.hasUtilities,
  });
  
  factory SearchAttributesDto.fromJson(Map<String, Object?> json) => _$SearchAttributesDtoFromJson(json);
  
  final int? bedrooms;
  final int? bathrooms;
  final int? halfBathrooms;
  final int? parkingSpaces;
  final double? totalArea;
  final double? builtArea;
  final double? lotArea;
  final int? yearBuilt;
  final bool? isFurnished;
  final bool? hasRoadAccess;
  final bool? hasUtilities;

  Map<String, Object?> toJson() => _$SearchAttributesDtoToJson(this);
}

// Flutter compute serialization functions for SearchAttributesDto
FutureOr<SearchAttributesDto> deserializeSearchAttributesDto(Map<String, dynamic> json) =>
    SearchAttributesDto.fromJson(json);

FutureOr<List<SearchAttributesDto>> deserializeSearchAttributesDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SearchAttributesDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSearchAttributesDto(SearchAttributesDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSearchAttributesDtoList(List<SearchAttributesDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
