// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_admin_dto.g.dart';

@JsonSerializable()
class UpdateAdminDto {
  const UpdateAdminDto({
    required this.preferredLanguage,
  });
  
  factory UpdateAdminDto.fromJson(Map<String, Object?> json) => _$UpdateAdminDtoFromJson(json);
  
  final String? preferredLanguage;

  Map<String, Object?> toJson() => _$UpdateAdminDtoToJson(this);
}

// Flutter compute serialization functions for UpdateAdminDto
FutureOr<UpdateAdminDto> deserializeUpdateAdminDto(Map<String, dynamic> json) =>
    UpdateAdminDto.fromJson(json);

FutureOr<List<UpdateAdminDto>> deserializeUpdateAdminDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateAdminDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateAdminDto(UpdateAdminDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateAdminDtoList(List<UpdateAdminDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
