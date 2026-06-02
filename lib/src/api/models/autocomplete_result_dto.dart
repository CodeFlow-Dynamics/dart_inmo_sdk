// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'autocomplete_suggestion_dto.dart';

part 'autocomplete_result_dto.g.dart';

@JsonSerializable()
class AutocompleteResultDto {
  const AutocompleteResultDto({
    required this.suggestions,
  });
  
  factory AutocompleteResultDto.fromJson(Map<String, Object?> json) => _$AutocompleteResultDtoFromJson(json);
  
  final List<AutocompleteSuggestionDto> suggestions;

  Map<String, Object?> toJson() => _$AutocompleteResultDtoToJson(this);
}

// Flutter compute serialization functions for AutocompleteResultDto
FutureOr<AutocompleteResultDto> deserializeAutocompleteResultDto(Map<String, dynamic> json) =>
    AutocompleteResultDto.fromJson(json);

FutureOr<List<AutocompleteResultDto>> deserializeAutocompleteResultDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AutocompleteResultDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAutocompleteResultDto(AutocompleteResultDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAutocompleteResultDtoList(List<AutocompleteResultDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
