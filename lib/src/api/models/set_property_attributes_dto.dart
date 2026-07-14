// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'set_property_attribute_item_dto.dart';

part 'set_property_attributes_dto.g.dart';

@JsonSerializable()
class SetPropertyAttributesDto {
  const SetPropertyAttributesDto({
    required this.attributes,
  });
  
  factory SetPropertyAttributesDto.fromJson(Map<String, Object?> json) => _$SetPropertyAttributesDtoFromJson(json);
  
  final List<SetPropertyAttributeItemDto> attributes;

  Map<String, Object?> toJson() => _$SetPropertyAttributesDtoToJson(this);
}

// Flutter compute serialization functions for SetPropertyAttributesDto
FutureOr<SetPropertyAttributesDto> deserializeSetPropertyAttributesDto(Map<String, dynamic> json) =>
    SetPropertyAttributesDto.fromJson(json);

FutureOr<List<SetPropertyAttributesDto>> deserializeSetPropertyAttributesDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SetPropertyAttributesDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSetPropertyAttributesDto(SetPropertyAttributesDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSetPropertyAttributesDtoList(List<SetPropertyAttributesDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
