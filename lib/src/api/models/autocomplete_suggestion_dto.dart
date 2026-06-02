// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'autocomplete_suggestion_dto.g.dart';

@JsonSerializable()
class AutocompleteSuggestionDto {
  const AutocompleteSuggestionDto({
    required this.title,
    required this.slug,
    required this.categoryName,
  });
  
  factory AutocompleteSuggestionDto.fromJson(Map<String, Object?> json) => _$AutocompleteSuggestionDtoFromJson(json);
  
  final String title;
  final String slug;
  final String categoryName;

  Map<String, Object?> toJson() => _$AutocompleteSuggestionDtoToJson(this);
}

// Flutter compute serialization functions for AutocompleteSuggestionDto
FutureOr<AutocompleteSuggestionDto> deserializeAutocompleteSuggestionDto(Map<String, dynamic> json) =>
    AutocompleteSuggestionDto.fromJson(json);

FutureOr<List<AutocompleteSuggestionDto>> deserializeAutocompleteSuggestionDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AutocompleteSuggestionDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAutocompleteSuggestionDto(AutocompleteSuggestionDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAutocompleteSuggestionDtoList(List<AutocompleteSuggestionDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
