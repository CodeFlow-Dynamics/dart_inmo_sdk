// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_country_dto.g.dart';

@JsonSerializable()
class AddCountryDto {
  const AddCountryDto({
    required this.isoCode,
    required this.i18nCode,
  });
  
  factory AddCountryDto.fromJson(Map<String, Object?> json) => _$AddCountryDtoFromJson(json);
  
  final String isoCode;
  final String i18nCode;

  Map<String, Object?> toJson() => _$AddCountryDtoToJson(this);
}

// Flutter compute serialization functions for AddCountryDto
FutureOr<AddCountryDto> deserializeAddCountryDto(Map<String, dynamic> json) =>
    AddCountryDto.fromJson(json);

FutureOr<List<AddCountryDto>> deserializeAddCountryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddCountryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddCountryDto(AddCountryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddCountryDtoList(List<AddCountryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
