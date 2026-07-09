// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_auth_status_dto.g.dart';

@JsonSerializable()
class UpdateAuthStatusDto {
  const UpdateAuthStatusDto({
    required this.actionCode,
  });
  
  factory UpdateAuthStatusDto.fromJson(Map<String, Object?> json) => _$UpdateAuthStatusDtoFromJson(json);
  
  final int actionCode;

  Map<String, Object?> toJson() => _$UpdateAuthStatusDtoToJson(this);
}

// Flutter compute serialization functions for UpdateAuthStatusDto
FutureOr<UpdateAuthStatusDto> deserializeUpdateAuthStatusDto(Map<String, dynamic> json) =>
    UpdateAuthStatusDto.fromJson(json);

FutureOr<List<UpdateAuthStatusDto>> deserializeUpdateAuthStatusDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateAuthStatusDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateAuthStatusDto(UpdateAuthStatusDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateAuthStatusDtoList(List<UpdateAuthStatusDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
