// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'identification_dto.g.dart';

@JsonSerializable()
class IdentificationDto {
  const IdentificationDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.documentId,
    required this.idNumber,
    required this.dateOfBirth,
    required this.expiryDate,
    required this.photoObverseLink,
    required this.photoReverseLink,
  });
  
  factory IdentificationDto.fromJson(Map<String, Object?> json) => _$IdentificationDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String userId;
  final String documentId;
  final String idNumber;
  final String dateOfBirth;
  final String expiryDate;
  final String? photoObverseLink;
  final String? photoReverseLink;

  Map<String, Object?> toJson() => _$IdentificationDtoToJson(this);
}

// Flutter compute serialization functions for IdentificationDto
FutureOr<IdentificationDto> deserializeIdentificationDto(Map<String, dynamic> json) =>
    IdentificationDto.fromJson(json);

FutureOr<List<IdentificationDto>> deserializeIdentificationDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => IdentificationDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeIdentificationDto(IdentificationDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeIdentificationDtoList(List<IdentificationDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
