// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'facet_count_dto.g.dart';

@JsonSerializable()
class FacetCountDto {
  const FacetCountDto({
    required this.value,
    required this.count,
  });
  
  factory FacetCountDto.fromJson(Map<String, Object?> json) => _$FacetCountDtoFromJson(json);
  
  final String value;
  final int count;

  Map<String, Object?> toJson() => _$FacetCountDtoToJson(this);
}

// Flutter compute serialization functions for FacetCountDto
FutureOr<FacetCountDto> deserializeFacetCountDto(Map<String, dynamic> json) =>
    FacetCountDto.fromJson(json);

FutureOr<List<FacetCountDto>> deserializeFacetCountDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => FacetCountDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeFacetCountDto(FacetCountDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeFacetCountDtoList(List<FacetCountDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
