// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'add_country_dto.dart';

part 'bulk_add_country_dto.g.dart';

@JsonSerializable()
class BulkAddCountryDto {
  const BulkAddCountryDto({
    required this.countries,
  });
  
  factory BulkAddCountryDto.fromJson(Map<String, Object?> json) => _$BulkAddCountryDtoFromJson(json);
  
  final List<AddCountryDto> countries;

  Map<String, Object?> toJson() => _$BulkAddCountryDtoToJson(this);
}

// Flutter compute serialization functions for BulkAddCountryDto
FutureOr<BulkAddCountryDto> deserializeBulkAddCountryDto(Map<String, dynamic> json) =>
    BulkAddCountryDto.fromJson(json);

FutureOr<List<BulkAddCountryDto>> deserializeBulkAddCountryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => BulkAddCountryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeBulkAddCountryDto(BulkAddCountryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeBulkAddCountryDtoList(List<BulkAddCountryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
