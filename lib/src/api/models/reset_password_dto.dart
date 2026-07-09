// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'reset_password_dto.g.dart';

@JsonSerializable()
class ResetPasswordDto {
  const ResetPasswordDto({
    required this.email,
    required this.verificationTokenCode,
    required this.newPassword,
  });
  
  factory ResetPasswordDto.fromJson(Map<String, Object?> json) => _$ResetPasswordDtoFromJson(json);
  
  final String email;
  final String verificationTokenCode;
  final String newPassword;

  Map<String, Object?> toJson() => _$ResetPasswordDtoToJson(this);
}

// Flutter compute serialization functions for ResetPasswordDto
FutureOr<ResetPasswordDto> deserializeResetPasswordDto(Map<String, dynamic> json) =>
    ResetPasswordDto.fromJson(json);

FutureOr<List<ResetPasswordDto>> deserializeResetPasswordDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ResetPasswordDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeResetPasswordDto(ResetPasswordDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeResetPasswordDtoList(List<ResetPasswordDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
