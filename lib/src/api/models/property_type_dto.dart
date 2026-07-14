// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'property_type_dto.g.dart';

@JsonSerializable()
class PropertyTypeDto {
  const PropertyTypeDto({
    required this.name,
    required this.i18nCode,
    required this.category,
  });
  
  factory PropertyTypeDto.fromJson(Map<String, Object?> json) => _$PropertyTypeDtoFromJson(json);
  
  final String name;
  final String i18nCode;
  final String category;

  Map<String, Object?> toJson() => _$PropertyTypeDtoToJson(this);
}

// Flutter compute serialization functions for PropertyTypeDto
FutureOr<PropertyTypeDto> deserializePropertyTypeDto(Map<String, dynamic> json) =>
    PropertyTypeDto.fromJson(json);

FutureOr<List<PropertyTypeDto>> deserializePropertyTypeDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PropertyTypeDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePropertyTypeDto(PropertyTypeDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePropertyTypeDtoList(List<PropertyTypeDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
