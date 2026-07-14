// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'email_request_dto.g.dart';

@JsonSerializable()
class EmailRequestDto {
  const EmailRequestDto({
    required this.email,
  });
  
  factory EmailRequestDto.fromJson(Map<String, Object?> json) => _$EmailRequestDtoFromJson(json);
  
  final String email;

  Map<String, Object?> toJson() => _$EmailRequestDtoToJson(this);
}

// Flutter compute serialization functions for EmailRequestDto
FutureOr<EmailRequestDto> deserializeEmailRequestDto(Map<String, dynamic> json) =>
    EmailRequestDto.fromJson(json);

FutureOr<List<EmailRequestDto>> deserializeEmailRequestDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => EmailRequestDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeEmailRequestDto(EmailRequestDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeEmailRequestDtoList(List<EmailRequestDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
