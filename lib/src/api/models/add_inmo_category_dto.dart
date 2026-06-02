// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_inmo_category_dto.g.dart';

@JsonSerializable()
class AddInmoCategoryDto {
  const AddInmoCategoryDto({
    required this.name,
    required this.i18nCode,
  });
  
  factory AddInmoCategoryDto.fromJson(Map<String, Object?> json) => _$AddInmoCategoryDtoFromJson(json);
  
  final String name;
  final String i18nCode;

  Map<String, Object?> toJson() => _$AddInmoCategoryDtoToJson(this);
}

// Flutter compute serialization functions for AddInmoCategoryDto
FutureOr<AddInmoCategoryDto> deserializeAddInmoCategoryDto(Map<String, dynamic> json) =>
    AddInmoCategoryDto.fromJson(json);

FutureOr<List<AddInmoCategoryDto>> deserializeAddInmoCategoryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddInmoCategoryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddInmoCategoryDto(AddInmoCategoryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddInmoCategoryDtoList(List<AddInmoCategoryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
