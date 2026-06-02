// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'change_password_dto.g.dart';

@JsonSerializable()
class ChangePasswordDto {
  const ChangePasswordDto({
    required this.currentPassword,
    required this.newPassword,
  });
  
  factory ChangePasswordDto.fromJson(Map<String, Object?> json) => _$ChangePasswordDtoFromJson(json);
  
  final String currentPassword;
  final String newPassword;

  Map<String, Object?> toJson() => _$ChangePasswordDtoToJson(this);
}

// Flutter compute serialization functions for ChangePasswordDto
FutureOr<ChangePasswordDto> deserializeChangePasswordDto(Map<String, dynamic> json) =>
    ChangePasswordDto.fromJson(json);

FutureOr<List<ChangePasswordDto>> deserializeChangePasswordDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ChangePasswordDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeChangePasswordDto(ChangePasswordDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeChangePasswordDtoList(List<ChangePasswordDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
