// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'inmo_category_dto.g.dart';

@JsonSerializable()
class InmoCategoryDto {
  const InmoCategoryDto({
    required this.id,
    required this.name,
    required this.i18nCode,
  });
  
  factory InmoCategoryDto.fromJson(Map<String, Object?> json) => _$InmoCategoryDtoFromJson(json);
  
  final String id;
  final String name;
  final String i18nCode;

  Map<String, Object?> toJson() => _$InmoCategoryDtoToJson(this);
}

// Flutter compute serialization functions for InmoCategoryDto
FutureOr<InmoCategoryDto> deserializeInmoCategoryDto(Map<String, dynamic> json) =>
    InmoCategoryDto.fromJson(json);

FutureOr<List<InmoCategoryDto>> deserializeInmoCategoryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => InmoCategoryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeInmoCategoryDto(InmoCategoryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeInmoCategoryDtoList(List<InmoCategoryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
