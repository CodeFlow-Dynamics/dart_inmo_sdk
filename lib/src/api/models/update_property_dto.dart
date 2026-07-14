// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_property_dto.g.dart';

@JsonSerializable()
class UpdatePropertyDto {
  const UpdatePropertyDto({
    required this.propertyCategory,
    required this.propertyType,
  });
  
  factory UpdatePropertyDto.fromJson(Map<String, Object?> json) => _$UpdatePropertyDtoFromJson(json);
  
  final String propertyCategory;
  final String propertyType;

  Map<String, Object?> toJson() => _$UpdatePropertyDtoToJson(this);
}

// Flutter compute serialization functions for UpdatePropertyDto
FutureOr<UpdatePropertyDto> deserializeUpdatePropertyDto(Map<String, dynamic> json) =>
    UpdatePropertyDto.fromJson(json);

FutureOr<List<UpdatePropertyDto>> deserializeUpdatePropertyDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdatePropertyDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdatePropertyDto(UpdatePropertyDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdatePropertyDtoList(List<UpdatePropertyDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
