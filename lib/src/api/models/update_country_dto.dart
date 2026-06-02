// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_country_dto.g.dart';

@JsonSerializable()
class UpdateCountryDto {
  const UpdateCountryDto({
    required this.isoCode,
    required this.i18nCode,
  });
  
  factory UpdateCountryDto.fromJson(Map<String, Object?> json) => _$UpdateCountryDtoFromJson(json);
  
  final String isoCode;
  final String i18nCode;

  Map<String, Object?> toJson() => _$UpdateCountryDtoToJson(this);
}

// Flutter compute serialization functions for UpdateCountryDto
FutureOr<UpdateCountryDto> deserializeUpdateCountryDto(Map<String, dynamic> json) =>
    UpdateCountryDto.fromJson(json);

FutureOr<List<UpdateCountryDto>> deserializeUpdateCountryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateCountryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateCountryDto(UpdateCountryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateCountryDtoList(List<UpdateCountryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
