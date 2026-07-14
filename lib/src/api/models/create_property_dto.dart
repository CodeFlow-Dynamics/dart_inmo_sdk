// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'create_property_dto.g.dart';

@JsonSerializable()
class CreatePropertyDto {
  const CreatePropertyDto({
    required this.ownerId,
    required this.propertyCategory,
    required this.propertyType,
  });
  
  factory CreatePropertyDto.fromJson(Map<String, Object?> json) => _$CreatePropertyDtoFromJson(json);
  
  final String ownerId;
  final String propertyCategory;
  final String propertyType;

  Map<String, Object?> toJson() => _$CreatePropertyDtoToJson(this);
}

// Flutter compute serialization functions for CreatePropertyDto
FutureOr<CreatePropertyDto> deserializeCreatePropertyDto(Map<String, dynamic> json) =>
    CreatePropertyDto.fromJson(json);

FutureOr<List<CreatePropertyDto>> deserializeCreatePropertyDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => CreatePropertyDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeCreatePropertyDto(CreatePropertyDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeCreatePropertyDtoList(List<CreatePropertyDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
