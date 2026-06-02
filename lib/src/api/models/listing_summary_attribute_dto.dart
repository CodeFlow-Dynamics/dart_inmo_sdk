// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'listing_summary_attribute_dto.g.dart';

@JsonSerializable()
class ListingSummaryAttributeDto {
  const ListingSummaryAttributeDto({
    required this.id,
    required this.numericValue,
    required this.boolValue,
    required this.textValue,
  });
  
  factory ListingSummaryAttributeDto.fromJson(Map<String, Object?> json) => _$ListingSummaryAttributeDtoFromJson(json);
  
  final String id;
  final double? numericValue;
  final bool? boolValue;
  final String? textValue;

  Map<String, Object?> toJson() => _$ListingSummaryAttributeDtoToJson(this);
}

// Flutter compute serialization functions for ListingSummaryAttributeDto
FutureOr<ListingSummaryAttributeDto> deserializeListingSummaryAttributeDto(Map<String, dynamic> json) =>
    ListingSummaryAttributeDto.fromJson(json);

FutureOr<List<ListingSummaryAttributeDto>> deserializeListingSummaryAttributeDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingSummaryAttributeDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingSummaryAttributeDto(ListingSummaryAttributeDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingSummaryAttributeDtoList(List<ListingSummaryAttributeDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
