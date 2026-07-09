// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'signed_url_dto.g.dart';

@JsonSerializable()
class SignedUrlDto {
  const SignedUrlDto({
    required this.signedUrl,
    required this.expiresAt,
  });
  
  factory SignedUrlDto.fromJson(Map<String, Object?> json) => _$SignedUrlDtoFromJson(json);
  
  final String signedUrl;
  final DateTime expiresAt;

  Map<String, Object?> toJson() => _$SignedUrlDtoToJson(this);
}

// Flutter compute serialization functions for SignedUrlDto
FutureOr<SignedUrlDto> deserializeSignedUrlDto(Map<String, dynamic> json) =>
    SignedUrlDto.fromJson(json);

FutureOr<List<SignedUrlDto>> deserializeSignedUrlDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SignedUrlDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSignedUrlDto(SignedUrlDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSignedUrlDtoList(List<SignedUrlDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
