// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'property_attribute_value_dto.g.dart';

@JsonSerializable()
class PropertyAttributeValueDto {
  const PropertyAttributeValueDto({
    required this.id,
    required this.propertyAttributeId,
    required this.numericValue,
    required this.textValue,
    required this.boolValue,
  });
  
  factory PropertyAttributeValueDto.fromJson(Map<String, Object?> json) => _$PropertyAttributeValueDtoFromJson(json);
  
  final String id;
  final String propertyAttributeId;
  final double? numericValue;
  final String? textValue;
  final bool? boolValue;

  Map<String, Object?> toJson() => _$PropertyAttributeValueDtoToJson(this);
}

// Flutter compute serialization functions for PropertyAttributeValueDto
FutureOr<PropertyAttributeValueDto> deserializePropertyAttributeValueDto(Map<String, dynamic> json) =>
    PropertyAttributeValueDto.fromJson(json);

FutureOr<List<PropertyAttributeValueDto>> deserializePropertyAttributeValueDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PropertyAttributeValueDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePropertyAttributeValueDto(PropertyAttributeValueDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePropertyAttributeValueDtoList(List<PropertyAttributeValueDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
