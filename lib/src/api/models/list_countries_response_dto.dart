// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'country_dto.dart';

part 'list_countries_response_dto.g.dart';

@JsonSerializable()
class ListCountriesResponseDto {
  const ListCountriesResponseDto({
    required this.countries,
  });
  
  factory ListCountriesResponseDto.fromJson(Map<String, Object?> json) => _$ListCountriesResponseDtoFromJson(json);
  
  final List<CountryDto> countries;

  Map<String, Object?> toJson() => _$ListCountriesResponseDtoToJson(this);
}

// Flutter compute serialization functions for ListCountriesResponseDto
FutureOr<ListCountriesResponseDto> deserializeListCountriesResponseDto(Map<String, dynamic> json) =>
    ListCountriesResponseDto.fromJson(json);

FutureOr<List<ListCountriesResponseDto>> deserializeListCountriesResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListCountriesResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListCountriesResponseDto(ListCountriesResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListCountriesResponseDtoList(List<ListCountriesResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
