// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'listing_attribute_dto.g.dart';

@JsonSerializable()
class ListingAttributeDto {
  const ListingAttributeDto({
    required this.id,
    required this.numericValue,
    required this.textValue,
    required this.boolValue,
  });
  
  factory ListingAttributeDto.fromJson(Map<String, Object?> json) => _$ListingAttributeDtoFromJson(json);
  
  final String id;
  final double? numericValue;
  final String? textValue;
  final bool? boolValue;

  Map<String, Object?> toJson() => _$ListingAttributeDtoToJson(this);
}

// Flutter compute serialization functions for ListingAttributeDto
FutureOr<ListingAttributeDto> deserializeListingAttributeDto(Map<String, dynamic> json) =>
    ListingAttributeDto.fromJson(json);

FutureOr<List<ListingAttributeDto>> deserializeListingAttributeDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingAttributeDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingAttributeDto(ListingAttributeDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingAttributeDtoList(List<ListingAttributeDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
