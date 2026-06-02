// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'auth_security_dto.g.dart';

@JsonSerializable()
class AuthSecurityDto {
  const AuthSecurityDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.emailVerified,
    required this.passwordChangeRequired,
  });
  
  factory AuthSecurityDto.fromJson(Map<String, Object?> json) => _$AuthSecurityDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String userId;
  final bool emailVerified;
  final bool passwordChangeRequired;

  Map<String, Object?> toJson() => _$AuthSecurityDtoToJson(this);
}

// Flutter compute serialization functions for AuthSecurityDto
FutureOr<AuthSecurityDto> deserializeAuthSecurityDto(Map<String, dynamic> json) =>
    AuthSecurityDto.fromJson(json);

FutureOr<List<AuthSecurityDto>> deserializeAuthSecurityDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AuthSecurityDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAuthSecurityDto(AuthSecurityDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAuthSecurityDtoList(List<AuthSecurityDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
