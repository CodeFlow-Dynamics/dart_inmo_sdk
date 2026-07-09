// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_phone_dto.g.dart';

@JsonSerializable()
class AddPhoneDto {
  const AddPhoneDto({
    required this.countryCode,
    required this.number,
    required this.clientUserId,
  });
  
  factory AddPhoneDto.fromJson(Map<String, Object?> json) => _$AddPhoneDtoFromJson(json);
  
  final String countryCode;
  final String number;
  final String clientUserId;

  Map<String, Object?> toJson() => _$AddPhoneDtoToJson(this);
}

// Flutter compute serialization functions for AddPhoneDto
FutureOr<AddPhoneDto> deserializeAddPhoneDto(Map<String, dynamic> json) =>
    AddPhoneDto.fromJson(json);

FutureOr<List<AddPhoneDto>> deserializeAddPhoneDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddPhoneDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddPhoneDto(AddPhoneDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddPhoneDtoList(List<AddPhoneDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
