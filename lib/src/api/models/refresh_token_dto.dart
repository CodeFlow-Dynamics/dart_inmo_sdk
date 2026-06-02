// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_dto.g.dart';

@JsonSerializable()
class RefreshTokenDto {
  const RefreshTokenDto({
    required this.refreshToken,
  });
  
  factory RefreshTokenDto.fromJson(Map<String, Object?> json) => _$RefreshTokenDtoFromJson(json);
  
  final String refreshToken;

  Map<String, Object?> toJson() => _$RefreshTokenDtoToJson(this);
}

// Flutter compute serialization functions for RefreshTokenDto
FutureOr<RefreshTokenDto> deserializeRefreshTokenDto(Map<String, dynamic> json) =>
    RefreshTokenDto.fromJson(json);

FutureOr<List<RefreshTokenDto>> deserializeRefreshTokenDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => RefreshTokenDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeRefreshTokenDto(RefreshTokenDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeRefreshTokenDtoList(List<RefreshTokenDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
