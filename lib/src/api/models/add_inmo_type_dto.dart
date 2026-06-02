// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_inmo_type_dto.g.dart';

@JsonSerializable()
class AddInmoTypeDto {
  const AddInmoTypeDto({
    required this.name,
    required this.categoryId,
    required this.parentId,
    required this.i18nCode,
  });
  
  factory AddInmoTypeDto.fromJson(Map<String, Object?> json) => _$AddInmoTypeDtoFromJson(json);
  
  final String name;
  final String categoryId;
  final String? parentId;
  final String i18nCode;

  Map<String, Object?> toJson() => _$AddInmoTypeDtoToJson(this);
}

// Flutter compute serialization functions for AddInmoTypeDto
FutureOr<AddInmoTypeDto> deserializeAddInmoTypeDto(Map<String, dynamic> json) =>
    AddInmoTypeDto.fromJson(json);

FutureOr<List<AddInmoTypeDto>> deserializeAddInmoTypeDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddInmoTypeDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddInmoTypeDto(AddInmoTypeDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddInmoTypeDtoList(List<AddInmoTypeDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
