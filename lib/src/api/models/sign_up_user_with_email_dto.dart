// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'sign_up_user_with_email_dto.g.dart';

@JsonSerializable()
class SignUpUserWithEmailDto {
  const SignUpUserWithEmailDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.firstName,
    required this.lastName,
    required this.email,
  });
  
  factory SignUpUserWithEmailDto.fromJson(Map<String, Object?> json) => _$SignUpUserWithEmailDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String firstName;
  final String lastName;
  final String email;

  Map<String, Object?> toJson() => _$SignUpUserWithEmailDtoToJson(this);
}

// Flutter compute serialization functions for SignUpUserWithEmailDto
FutureOr<SignUpUserWithEmailDto> deserializeSignUpUserWithEmailDto(Map<String, dynamic> json) =>
    SignUpUserWithEmailDto.fromJson(json);

FutureOr<List<SignUpUserWithEmailDto>> deserializeSignUpUserWithEmailDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SignUpUserWithEmailDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSignUpUserWithEmailDto(SignUpUserWithEmailDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSignUpUserWithEmailDtoList(List<SignUpUserWithEmailDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
