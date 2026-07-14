// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'administrative_level_dto.g.dart';

@JsonSerializable()
class AdministrativeLevelDto {
  const AdministrativeLevelDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.country,
    required this.name,
    required this.code,
    required this.sortOrder,
  });
  
  factory AdministrativeLevelDto.fromJson(Map<String, Object?> json) => _$AdministrativeLevelDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String country;
  final String name;
  final String? code;
  final int? sortOrder;

  Map<String, Object?> toJson() => _$AdministrativeLevelDtoToJson(this);
}

// Flutter compute serialization functions for AdministrativeLevelDto
FutureOr<AdministrativeLevelDto> deserializeAdministrativeLevelDto(Map<String, dynamic> json) =>
    AdministrativeLevelDto.fromJson(json);

FutureOr<List<AdministrativeLevelDto>> deserializeAdministrativeLevelDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AdministrativeLevelDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAdministrativeLevelDto(AdministrativeLevelDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAdministrativeLevelDtoList(List<AdministrativeLevelDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
