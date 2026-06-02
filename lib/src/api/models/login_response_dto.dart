// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'login_response_dto.g.dart';

@JsonSerializable()
class LoginResponseDto {
  const LoginResponseDto({
    required this.accessToken,
    required this.refreshToken,
    required this.deviceId,
    required this.passwordChangeRequired,
  });
  
  factory LoginResponseDto.fromJson(Map<String, Object?> json) => _$LoginResponseDtoFromJson(json);
  
  final String accessToken;
  final String refreshToken;
  final String deviceId;
  final bool? passwordChangeRequired;

  Map<String, Object?> toJson() => _$LoginResponseDtoToJson(this);
}

// Flutter compute serialization functions for LoginResponseDto
FutureOr<LoginResponseDto> deserializeLoginResponseDto(Map<String, dynamic> json) =>
    LoginResponseDto.fromJson(json);

FutureOr<List<LoginResponseDto>> deserializeLoginResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => LoginResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeLoginResponseDto(LoginResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeLoginResponseDtoList(List<LoginResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
