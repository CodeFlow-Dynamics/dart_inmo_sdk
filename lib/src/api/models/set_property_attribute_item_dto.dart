// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'set_property_attribute_item_dto.g.dart';

@JsonSerializable()
class SetPropertyAttributeItemDto {
  const SetPropertyAttributeItemDto({
    required this.propertyAttributeId,
    required this.numericValue,
    required this.textValue,
    required this.boolValue,
  });
  
  factory SetPropertyAttributeItemDto.fromJson(Map<String, Object?> json) => _$SetPropertyAttributeItemDtoFromJson(json);
  
  final String propertyAttributeId;
  final double? numericValue;
  final String? textValue;
  final bool? boolValue;

  Map<String, Object?> toJson() => _$SetPropertyAttributeItemDtoToJson(this);
}

// Flutter compute serialization functions for SetPropertyAttributeItemDto
FutureOr<SetPropertyAttributeItemDto> deserializeSetPropertyAttributeItemDto(Map<String, dynamic> json) =>
    SetPropertyAttributeItemDto.fromJson(json);

FutureOr<List<SetPropertyAttributeItemDto>> deserializeSetPropertyAttributeItemDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SetPropertyAttributeItemDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSetPropertyAttributeItemDto(SetPropertyAttributeItemDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSetPropertyAttributeItemDtoList(List<SetPropertyAttributeItemDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
