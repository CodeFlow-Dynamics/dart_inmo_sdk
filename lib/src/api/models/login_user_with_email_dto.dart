// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'login_user_with_email_dto.g.dart';

@JsonSerializable()
class LoginUserWithEmailDto {
  const LoginUserWithEmailDto({
    required this.email,
    required this.password,
    required this.deviceName,
  });
  
  factory LoginUserWithEmailDto.fromJson(Map<String, Object?> json) => _$LoginUserWithEmailDtoFromJson(json);
  
  final String email;
  final String password;
  final String? deviceName;

  Map<String, Object?> toJson() => _$LoginUserWithEmailDtoToJson(this);
}

// Flutter compute serialization functions for LoginUserWithEmailDto
FutureOr<LoginUserWithEmailDto> deserializeLoginUserWithEmailDto(Map<String, dynamic> json) =>
    LoginUserWithEmailDto.fromJson(json);

FutureOr<List<LoginUserWithEmailDto>> deserializeLoginUserWithEmailDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => LoginUserWithEmailDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeLoginUserWithEmailDto(LoginUserWithEmailDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeLoginUserWithEmailDtoList(List<LoginUserWithEmailDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
