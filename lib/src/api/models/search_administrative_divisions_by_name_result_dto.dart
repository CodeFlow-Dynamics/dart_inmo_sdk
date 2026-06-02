// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'administrative_division_search_match_dto.dart';

part 'search_administrative_divisions_by_name_result_dto.g.dart';

@JsonSerializable()
class SearchAdministrativeDivisionsByNameResultDto {
  const SearchAdministrativeDivisionsByNameResultDto({
    required this.matches,
  });
  
  factory SearchAdministrativeDivisionsByNameResultDto.fromJson(Map<String, Object?> json) => _$SearchAdministrativeDivisionsByNameResultDtoFromJson(json);
  
  final List<AdministrativeDivisionSearchMatchDto> matches;

  Map<String, Object?> toJson() => _$SearchAdministrativeDivisionsByNameResultDtoToJson(this);
}

// Flutter compute serialization functions for SearchAdministrativeDivisionsByNameResultDto
FutureOr<SearchAdministrativeDivisionsByNameResultDto> deserializeSearchAdministrativeDivisionsByNameResultDto(Map<String, dynamic> json) =>
    SearchAdministrativeDivisionsByNameResultDto.fromJson(json);

FutureOr<List<SearchAdministrativeDivisionsByNameResultDto>> deserializeSearchAdministrativeDivisionsByNameResultDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SearchAdministrativeDivisionsByNameResultDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSearchAdministrativeDivisionsByNameResultDto(SearchAdministrativeDivisionsByNameResultDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSearchAdministrativeDivisionsByNameResultDtoList(List<SearchAdministrativeDivisionsByNameResultDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
