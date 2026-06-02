// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'amenity_dto.dart';

part 'amenity_category_dto.g.dart';

@JsonSerializable()
class AmenityCategoryDto {
  const AmenityCategoryDto({
    required this.categoryId,
    required this.category,
    required this.i18nCode,
    required this.amenities,
  });
  
  factory AmenityCategoryDto.fromJson(Map<String, Object?> json) => _$AmenityCategoryDtoFromJson(json);
  
  final String categoryId;
  final String category;
  final String i18nCode;
  final List<AmenityDto> amenities;

  Map<String, Object?> toJson() => _$AmenityCategoryDtoToJson(this);
}

// Flutter compute serialization functions for AmenityCategoryDto
FutureOr<AmenityCategoryDto> deserializeAmenityCategoryDto(Map<String, dynamic> json) =>
    AmenityCategoryDto.fromJson(json);

FutureOr<List<AmenityCategoryDto>> deserializeAmenityCategoryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AmenityCategoryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAmenityCategoryDto(AmenityCategoryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAmenityCategoryDtoList(List<AmenityCategoryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
