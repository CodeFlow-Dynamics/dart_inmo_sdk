// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'administrative_division_search_match_dto.g.dart';

@JsonSerializable()
class AdministrativeDivisionSearchMatchDto {
  const AdministrativeDivisionSearchMatchDto({
    required this.id,
    required this.name,
    required this.parentId,
    required this.isoCode,
    required this.levelName,
    required this.fullPath,
  });
  
  factory AdministrativeDivisionSearchMatchDto.fromJson(Map<String, Object?> json) => _$AdministrativeDivisionSearchMatchDtoFromJson(json);
  
  final String id;
  final String name;
  final String? parentId;
  final String isoCode;
  final String? levelName;
  final String fullPath;

  Map<String, Object?> toJson() => _$AdministrativeDivisionSearchMatchDtoToJson(this);
}

// Flutter compute serialization functions for AdministrativeDivisionSearchMatchDto
FutureOr<AdministrativeDivisionSearchMatchDto> deserializeAdministrativeDivisionSearchMatchDto(Map<String, dynamic> json) =>
    AdministrativeDivisionSearchMatchDto.fromJson(json);

FutureOr<List<AdministrativeDivisionSearchMatchDto>> deserializeAdministrativeDivisionSearchMatchDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AdministrativeDivisionSearchMatchDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAdministrativeDivisionSearchMatchDto(AdministrativeDivisionSearchMatchDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAdministrativeDivisionSearchMatchDtoList(List<AdministrativeDivisionSearchMatchDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
