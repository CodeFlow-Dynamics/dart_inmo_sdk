// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'property_category_dto.g.dart';

@JsonSerializable()
class PropertyCategoryDto {
  const PropertyCategoryDto({
    required this.name,
    required this.i18nCode,
  });
  
  factory PropertyCategoryDto.fromJson(Map<String, Object?> json) => _$PropertyCategoryDtoFromJson(json);
  
  final String name;
  final String i18nCode;

  Map<String, Object?> toJson() => _$PropertyCategoryDtoToJson(this);
}

// Flutter compute serialization functions for PropertyCategoryDto
FutureOr<PropertyCategoryDto> deserializePropertyCategoryDto(Map<String, dynamic> json) =>
    PropertyCategoryDto.fromJson(json);

FutureOr<List<PropertyCategoryDto>> deserializePropertyCategoryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PropertyCategoryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePropertyCategoryDto(PropertyCategoryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePropertyCategoryDtoList(List<PropertyCategoryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
