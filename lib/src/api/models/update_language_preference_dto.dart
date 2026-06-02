// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_language_preference_dto.g.dart';

@JsonSerializable()
class UpdateLanguagePreferenceDto {
  const UpdateLanguagePreferenceDto({
    required this.languageCode,
  });
  
  factory UpdateLanguagePreferenceDto.fromJson(Map<String, Object?> json) => _$UpdateLanguagePreferenceDtoFromJson(json);
  
  final String languageCode;

  Map<String, Object?> toJson() => _$UpdateLanguagePreferenceDtoToJson(this);
}

// Flutter compute serialization functions for UpdateLanguagePreferenceDto
FutureOr<UpdateLanguagePreferenceDto> deserializeUpdateLanguagePreferenceDto(Map<String, dynamic> json) =>
    UpdateLanguagePreferenceDto.fromJson(json);

FutureOr<List<UpdateLanguagePreferenceDto>> deserializeUpdateLanguagePreferenceDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateLanguagePreferenceDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateLanguagePreferenceDto(UpdateLanguagePreferenceDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateLanguagePreferenceDtoList(List<UpdateLanguagePreferenceDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
