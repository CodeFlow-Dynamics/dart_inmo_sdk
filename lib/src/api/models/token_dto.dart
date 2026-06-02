// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'token_dto.g.dart';

@JsonSerializable()
class TokenDto {
  const TokenDto({
    required this.id,
    required this.token,
    required this.expiresAt,
  });
  
  factory TokenDto.fromJson(Map<String, Object?> json) => _$TokenDtoFromJson(json);
  
  final String id;
  final String token;
  final DateTime expiresAt;

  Map<String, Object?> toJson() => _$TokenDtoToJson(this);
}

// Flutter compute serialization functions for TokenDto
FutureOr<TokenDto> deserializeTokenDto(Map<String, dynamic> json) =>
    TokenDto.fromJson(json);

FutureOr<List<TokenDto>> deserializeTokenDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => TokenDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeTokenDto(TokenDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeTokenDtoList(List<TokenDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
