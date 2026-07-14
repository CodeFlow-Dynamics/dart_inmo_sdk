// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'login_client_with_google_dto.g.dart';

@JsonSerializable()
class LoginClientWithGoogleDto {
  const LoginClientWithGoogleDto({
    required this.idToken,
    required this.deviceName,
  });
  
  factory LoginClientWithGoogleDto.fromJson(Map<String, Object?> json) => _$LoginClientWithGoogleDtoFromJson(json);
  
  final String idToken;
  final String? deviceName;

  Map<String, Object?> toJson() => _$LoginClientWithGoogleDtoToJson(this);
}

// Flutter compute serialization functions for LoginClientWithGoogleDto
FutureOr<LoginClientWithGoogleDto> deserializeLoginClientWithGoogleDto(Map<String, dynamic> json) =>
    LoginClientWithGoogleDto.fromJson(json);

FutureOr<List<LoginClientWithGoogleDto>> deserializeLoginClientWithGoogleDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => LoginClientWithGoogleDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeLoginClientWithGoogleDto(LoginClientWithGoogleDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeLoginClientWithGoogleDtoList(List<LoginClientWithGoogleDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
