// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'sign_up_admin_dto.g.dart';

@JsonSerializable()
class SignUpAdminDto {
  const SignUpAdminDto({
    required this.email,
    required this.password,
    required this.repeatPassword,
    required this.firstName,
    required this.lastName,
    required this.countryCode,
    required this.phoneNumber,
    required this.preferredLanguage,
  });
  
  factory SignUpAdminDto.fromJson(Map<String, Object?> json) => _$SignUpAdminDtoFromJson(json);
  
  final String email;
  final String password;
  final String repeatPassword;
  final String firstName;
  final String lastName;
  final String countryCode;
  final String phoneNumber;
  final String? preferredLanguage;

  Map<String, Object?> toJson() => _$SignUpAdminDtoToJson(this);
}

// Flutter compute serialization functions for SignUpAdminDto
FutureOr<SignUpAdminDto> deserializeSignUpAdminDto(Map<String, dynamic> json) =>
    SignUpAdminDto.fromJson(json);

FutureOr<List<SignUpAdminDto>> deserializeSignUpAdminDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SignUpAdminDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSignUpAdminDto(SignUpAdminDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSignUpAdminDtoList(List<SignUpAdminDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
