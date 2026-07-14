// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_property_unit_dto.g.dart';

@JsonSerializable()
class AddPropertyUnitDto {
  const AddPropertyUnitDto({
    required this.code,
    required this.label,
  });
  
  factory AddPropertyUnitDto.fromJson(Map<String, Object?> json) => _$AddPropertyUnitDtoFromJson(json);
  
  final String code;
  final String? label;

  Map<String, Object?> toJson() => _$AddPropertyUnitDtoToJson(this);
}

// Flutter compute serialization functions for AddPropertyUnitDto
FutureOr<AddPropertyUnitDto> deserializeAddPropertyUnitDto(Map<String, dynamic> json) =>
    AddPropertyUnitDto.fromJson(json);

FutureOr<List<AddPropertyUnitDto>> deserializeAddPropertyUnitDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddPropertyUnitDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddPropertyUnitDto(AddPropertyUnitDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddPropertyUnitDtoList(List<AddPropertyUnitDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
