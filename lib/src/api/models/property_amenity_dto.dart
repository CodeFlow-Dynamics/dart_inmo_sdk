// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'property_amenity_dto.g.dart';

@JsonSerializable()
class PropertyAmenityDto {
  const PropertyAmenityDto({
    required this.id,
    required this.amenityId,
  });
  
  factory PropertyAmenityDto.fromJson(Map<String, Object?> json) => _$PropertyAmenityDtoFromJson(json);
  
  final String id;
  final String amenityId;

  Map<String, Object?> toJson() => _$PropertyAmenityDtoToJson(this);
}

// Flutter compute serialization functions for PropertyAmenityDto
FutureOr<PropertyAmenityDto> deserializePropertyAmenityDto(Map<String, dynamic> json) =>
    PropertyAmenityDto.fromJson(json);

FutureOr<List<PropertyAmenityDto>> deserializePropertyAmenityDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PropertyAmenityDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePropertyAmenityDto(PropertyAmenityDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePropertyAmenityDtoList(List<PropertyAmenityDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
