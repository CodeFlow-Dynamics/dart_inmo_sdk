// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_response_dto.g.dart';

@JsonSerializable()
class RefreshTokenResponseDto {
  const RefreshTokenResponseDto({
    required this.accessToken,
    required this.refreshToken,
  });
  
  factory RefreshTokenResponseDto.fromJson(Map<String, Object?> json) => _$RefreshTokenResponseDtoFromJson(json);
  
  final String accessToken;
  final String refreshToken;

  Map<String, Object?> toJson() => _$RefreshTokenResponseDtoToJson(this);
}

// Flutter compute serialization functions for RefreshTokenResponseDto
FutureOr<RefreshTokenResponseDto> deserializeRefreshTokenResponseDto(Map<String, dynamic> json) =>
    RefreshTokenResponseDto.fromJson(json);

FutureOr<List<RefreshTokenResponseDto>> deserializeRefreshTokenResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => RefreshTokenResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeRefreshTokenResponseDto(RefreshTokenResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeRefreshTokenResponseDtoList(List<RefreshTokenResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
