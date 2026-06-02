// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'sign_up_user_with_email_and_password_dto.g.dart';

@JsonSerializable()
class SignUpUserWithEmailAndPasswordDto {
  const SignUpUserWithEmailAndPasswordDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.firstName,
    required this.lastName,
    required this.email,
  });
  
  factory SignUpUserWithEmailAndPasswordDto.fromJson(Map<String, Object?> json) => _$SignUpUserWithEmailAndPasswordDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String firstName;
  final String lastName;
  final String email;

  Map<String, Object?> toJson() => _$SignUpUserWithEmailAndPasswordDtoToJson(this);
}

// Flutter compute serialization functions for SignUpUserWithEmailAndPasswordDto
FutureOr<SignUpUserWithEmailAndPasswordDto> deserializeSignUpUserWithEmailAndPasswordDto(Map<String, dynamic> json) =>
    SignUpUserWithEmailAndPasswordDto.fromJson(json);

FutureOr<List<SignUpUserWithEmailAndPasswordDto>> deserializeSignUpUserWithEmailAndPasswordDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SignUpUserWithEmailAndPasswordDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSignUpUserWithEmailAndPasswordDto(SignUpUserWithEmailAndPasswordDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSignUpUserWithEmailAndPasswordDtoList(List<SignUpUserWithEmailAndPasswordDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
