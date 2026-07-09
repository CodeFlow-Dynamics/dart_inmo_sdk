// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_verify_token_dto.g.dart';

@JsonSerializable()
class AddVerifyTokenDto {
  const AddVerifyTokenDto({
    required this.email,
    required this.verificationTokenCode,
  });
  
  factory AddVerifyTokenDto.fromJson(Map<String, Object?> json) => _$AddVerifyTokenDtoFromJson(json);
  
  final String email;
  final String verificationTokenCode;

  Map<String, Object?> toJson() => _$AddVerifyTokenDtoToJson(this);
}

// Flutter compute serialization functions for AddVerifyTokenDto
FutureOr<AddVerifyTokenDto> deserializeAddVerifyTokenDto(Map<String, dynamic> json) =>
    AddVerifyTokenDto.fromJson(json);

FutureOr<List<AddVerifyTokenDto>> deserializeAddVerifyTokenDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddVerifyTokenDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddVerifyTokenDto(AddVerifyTokenDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddVerifyTokenDtoList(List<AddVerifyTokenDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
