// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'administrative_division_dto.g.dart';

@JsonSerializable()
class AdministrativeDivisionDto {
  const AdministrativeDivisionDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.countryId,
    required this.parentId,
    required this.levelId,
    required this.name,
    required this.code,
  });
  
  factory AdministrativeDivisionDto.fromJson(Map<String, Object?> json) => _$AdministrativeDivisionDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String countryId;
  final String? parentId;
  final String? levelId;
  final String name;
  final String? code;

  Map<String, Object?> toJson() => _$AdministrativeDivisionDtoToJson(this);
}

// Flutter compute serialization functions for AdministrativeDivisionDto
FutureOr<AdministrativeDivisionDto> deserializeAdministrativeDivisionDto(Map<String, dynamic> json) =>
    AdministrativeDivisionDto.fromJson(json);

FutureOr<List<AdministrativeDivisionDto>> deserializeAdministrativeDivisionDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AdministrativeDivisionDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAdministrativeDivisionDto(AdministrativeDivisionDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAdministrativeDivisionDtoList(List<AdministrativeDivisionDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
