// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'phone_dto.g.dart';

@JsonSerializable()
class PhoneDto {
  const PhoneDto({
    required this.id,
    required this.countryCode,
    required this.number,
    required this.userId,
  });
  
  factory PhoneDto.fromJson(Map<String, Object?> json) => _$PhoneDtoFromJson(json);
  
  final String id;
  final String countryCode;
  final String number;
  final String userId;

  Map<String, Object?> toJson() => _$PhoneDtoToJson(this);
}

// Flutter compute serialization functions for PhoneDto
FutureOr<PhoneDto> deserializePhoneDto(Map<String, dynamic> json) =>
    PhoneDto.fromJson(json);

FutureOr<List<PhoneDto>> deserializePhoneDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PhoneDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePhoneDto(PhoneDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePhoneDtoList(List<PhoneDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
