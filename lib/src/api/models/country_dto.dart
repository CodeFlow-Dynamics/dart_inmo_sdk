// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'country_dto.g.dart';

@JsonSerializable()
class CountryDto {
  const CountryDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.isoCode,
    required this.i18nCode,
  });
  
  factory CountryDto.fromJson(Map<String, Object?> json) => _$CountryDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String isoCode;
  final String i18nCode;

  Map<String, Object?> toJson() => _$CountryDtoToJson(this);
}

// Flutter compute serialization functions for CountryDto
FutureOr<CountryDto> deserializeCountryDto(Map<String, dynamic> json) =>
    CountryDto.fromJson(json);

FutureOr<List<CountryDto>> deserializeCountryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => CountryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeCountryDto(CountryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeCountryDtoList(List<CountryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
