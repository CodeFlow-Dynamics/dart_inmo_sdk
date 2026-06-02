// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'amenity_dto.g.dart';

@JsonSerializable()
class AmenityDto {
  const AmenityDto({
    required this.id,
    required this.name,
    required this.i18nCode,
  });
  
  factory AmenityDto.fromJson(Map<String, Object?> json) => _$AmenityDtoFromJson(json);
  
  final String id;
  final String name;
  final String i18nCode;

  Map<String, Object?> toJson() => _$AmenityDtoToJson(this);
}

// Flutter compute serialization functions for AmenityDto
FutureOr<AmenityDto> deserializeAmenityDto(Map<String, dynamic> json) =>
    AmenityDto.fromJson(json);

FutureOr<List<AmenityDto>> deserializeAmenityDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AmenityDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAmenityDto(AmenityDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAmenityDtoList(List<AmenityDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
