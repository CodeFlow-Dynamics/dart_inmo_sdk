// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'sign_up_consumer_dto.g.dart';

@JsonSerializable()
class SignUpConsumerDto {
  const SignUpConsumerDto({
    required this.email,
    required this.password,
    required this.repeatPassword,
    required this.countryCode,
    required this.phoneNumber,
    required this.preferredLanguage,
  });
  
  factory SignUpConsumerDto.fromJson(Map<String, Object?> json) => _$SignUpConsumerDtoFromJson(json);
  
  final String email;
  final String password;
  final String repeatPassword;
  final String countryCode;
  final String phoneNumber;
  final String? preferredLanguage;

  Map<String, Object?> toJson() => _$SignUpConsumerDtoToJson(this);
}

// Flutter compute serialization functions for SignUpConsumerDto
FutureOr<SignUpConsumerDto> deserializeSignUpConsumerDto(Map<String, dynamic> json) =>
    SignUpConsumerDto.fromJson(json);

FutureOr<List<SignUpConsumerDto>> deserializeSignUpConsumerDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SignUpConsumerDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSignUpConsumerDto(SignUpConsumerDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSignUpConsumerDtoList(List<SignUpConsumerDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
