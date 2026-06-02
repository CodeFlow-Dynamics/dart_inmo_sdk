// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'inmo_type_dto.g.dart';

@JsonSerializable()
class InmoTypeDto {
  const InmoTypeDto({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.parentId,
    required this.i18nCode,
  });
  
  factory InmoTypeDto.fromJson(Map<String, Object?> json) => _$InmoTypeDtoFromJson(json);
  
  final String id;
  final String name;
  final String categoryId;
  final String? parentId;
  final String i18nCode;

  Map<String, Object?> toJson() => _$InmoTypeDtoToJson(this);
}

// Flutter compute serialization functions for InmoTypeDto
FutureOr<InmoTypeDto> deserializeInmoTypeDto(Map<String, dynamic> json) =>
    InmoTypeDto.fromJson(json);

FutureOr<List<InmoTypeDto>> deserializeInmoTypeDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => InmoTypeDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeInmoTypeDto(InmoTypeDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeInmoTypeDtoList(List<InmoTypeDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
