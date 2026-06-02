// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'administrative_level_dto.dart';

part 'list_administrative_levels_response_dto.g.dart';

@JsonSerializable()
class ListAdministrativeLevelsResponseDto {
  const ListAdministrativeLevelsResponseDto({
    required this.levels,
  });
  
  factory ListAdministrativeLevelsResponseDto.fromJson(Map<String, Object?> json) => _$ListAdministrativeLevelsResponseDtoFromJson(json);
  
  final List<AdministrativeLevelDto> levels;

  Map<String, Object?> toJson() => _$ListAdministrativeLevelsResponseDtoToJson(this);
}

// Flutter compute serialization functions for ListAdministrativeLevelsResponseDto
FutureOr<ListAdministrativeLevelsResponseDto> deserializeListAdministrativeLevelsResponseDto(Map<String, dynamic> json) =>
    ListAdministrativeLevelsResponseDto.fromJson(json);

FutureOr<List<ListAdministrativeLevelsResponseDto>> deserializeListAdministrativeLevelsResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListAdministrativeLevelsResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListAdministrativeLevelsResponseDto(ListAdministrativeLevelsResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListAdministrativeLevelsResponseDtoList(List<ListAdministrativeLevelsResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
