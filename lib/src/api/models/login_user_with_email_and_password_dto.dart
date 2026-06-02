// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'login_user_with_email_and_password_dto.g.dart';

@JsonSerializable()
class LoginUserWithEmailAndPasswordDto {
  const LoginUserWithEmailAndPasswordDto({
    required this.email,
    required this.password,
    required this.deviceName,
  });
  
  factory LoginUserWithEmailAndPasswordDto.fromJson(Map<String, Object?> json) => _$LoginUserWithEmailAndPasswordDtoFromJson(json);
  
  final String email;
  final String password;
  final String? deviceName;

  Map<String, Object?> toJson() => _$LoginUserWithEmailAndPasswordDtoToJson(this);
}

// Flutter compute serialization functions for LoginUserWithEmailAndPasswordDto
FutureOr<LoginUserWithEmailAndPasswordDto> deserializeLoginUserWithEmailAndPasswordDto(Map<String, dynamic> json) =>
    LoginUserWithEmailAndPasswordDto.fromJson(json);

FutureOr<List<LoginUserWithEmailAndPasswordDto>> deserializeLoginUserWithEmailAndPasswordDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => LoginUserWithEmailAndPasswordDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeLoginUserWithEmailAndPasswordDto(LoginUserWithEmailAndPasswordDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeLoginUserWithEmailAndPasswordDtoList(List<LoginUserWithEmailAndPasswordDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
