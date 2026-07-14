// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'property_amenity_dto.dart';
import 'property_attribute_value_dto.dart';
import 'property_unit_dto.dart';

part 'property_dto.g.dart';

@JsonSerializable()
class PropertyDto {
  const PropertyDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.ownerId,
    required this.propertyCategory,
    required this.propertyType,
    required this.administrativeDivisionId,
    required this.street,
    required this.latitude,
    required this.longitude,
    required this.status,
    required this.units,
    required this.attributes,
    required this.amenities,
  });
  
  factory PropertyDto.fromJson(Map<String, Object?> json) => _$PropertyDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String ownerId;
  final String propertyCategory;
  final String propertyType;
  final String? administrativeDivisionId;
  final String? street;
  final double? latitude;
  final double? longitude;
  final String status;
  final List<PropertyUnitDto> units;
  final List<PropertyAttributeValueDto> attributes;
  final List<PropertyAmenityDto> amenities;

  Map<String, Object?> toJson() => _$PropertyDtoToJson(this);
}

// Flutter compute serialization functions for PropertyDto
FutureOr<PropertyDto> deserializePropertyDto(Map<String, dynamic> json) =>
    PropertyDto.fromJson(json);

FutureOr<List<PropertyDto>> deserializePropertyDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PropertyDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePropertyDto(PropertyDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePropertyDtoList(List<PropertyDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
