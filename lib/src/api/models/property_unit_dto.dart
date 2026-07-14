// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'property_unit_dto.g.dart';

@JsonSerializable()
class PropertyUnitDto {
  const PropertyUnitDto({
    required this.id,
    required this.code,
    required this.label,
  });
  
  factory PropertyUnitDto.fromJson(Map<String, Object?> json) => _$PropertyUnitDtoFromJson(json);
  
  final String id;
  final String code;
  final String? label;

  Map<String, Object?> toJson() => _$PropertyUnitDtoToJson(this);
}

// Flutter compute serialization functions for PropertyUnitDto
FutureOr<PropertyUnitDto> deserializePropertyUnitDto(Map<String, dynamic> json) =>
    PropertyUnitDto.fromJson(json);

FutureOr<List<PropertyUnitDto>> deserializePropertyUnitDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PropertyUnitDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePropertyUnitDto(PropertyUnitDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePropertyUnitDtoList(List<PropertyUnitDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
