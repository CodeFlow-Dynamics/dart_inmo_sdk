// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_inmo_category_dto.g.dart';

@JsonSerializable()
class UpdateInmoCategoryDto {
  const UpdateInmoCategoryDto({
    required this.name,
  });
  
  factory UpdateInmoCategoryDto.fromJson(Map<String, Object?> json) => _$UpdateInmoCategoryDtoFromJson(json);
  
  final String name;

  Map<String, Object?> toJson() => _$UpdateInmoCategoryDtoToJson(this);
}

// Flutter compute serialization functions for UpdateInmoCategoryDto
FutureOr<UpdateInmoCategoryDto> deserializeUpdateInmoCategoryDto(Map<String, dynamic> json) =>
    UpdateInmoCategoryDto.fromJson(json);

FutureOr<List<UpdateInmoCategoryDto>> deserializeUpdateInmoCategoryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateInmoCategoryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateInmoCategoryDto(UpdateInmoCategoryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateInmoCategoryDtoList(List<UpdateInmoCategoryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
