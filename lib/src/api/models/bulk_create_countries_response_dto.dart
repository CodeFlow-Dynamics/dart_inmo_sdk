// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'country_dto.dart';

part 'bulk_create_countries_response_dto.g.dart';

@JsonSerializable()
class BulkCreateCountriesResponseDto {
  const BulkCreateCountriesResponseDto({
    required this.countries,
  });
  
  factory BulkCreateCountriesResponseDto.fromJson(Map<String, Object?> json) => _$BulkCreateCountriesResponseDtoFromJson(json);
  
  final List<CountryDto> countries;

  Map<String, Object?> toJson() => _$BulkCreateCountriesResponseDtoToJson(this);
}

// Flutter compute serialization functions for BulkCreateCountriesResponseDto
FutureOr<BulkCreateCountriesResponseDto> deserializeBulkCreateCountriesResponseDto(Map<String, dynamic> json) =>
    BulkCreateCountriesResponseDto.fromJson(json);

FutureOr<List<BulkCreateCountriesResponseDto>> deserializeBulkCreateCountriesResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => BulkCreateCountriesResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeBulkCreateCountriesResponseDto(BulkCreateCountriesResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeBulkCreateCountriesResponseDtoList(List<BulkCreateCountriesResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
