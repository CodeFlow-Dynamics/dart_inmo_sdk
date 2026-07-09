// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_identification_dto.g.dart';

@JsonSerializable()
class AddIdentificationDto {
  const AddIdentificationDto({
    required this.authId,
    required this.documentId,
    required this.idNumber,
    required this.validationPattern,
    required this.dateOfBirth,
    required this.expiryDate,
    required this.obverseMediaFileId,
    required this.reverseMediaFileId,
  });
  
  factory AddIdentificationDto.fromJson(Map<String, Object?> json) => _$AddIdentificationDtoFromJson(json);
  
  final String authId;
  final String documentId;
  final String idNumber;
  final String validationPattern;
  final String dateOfBirth;
  final String expiryDate;
  final String obverseMediaFileId;
  final String? reverseMediaFileId;

  Map<String, Object?> toJson() => _$AddIdentificationDtoToJson(this);
}

// Flutter compute serialization functions for AddIdentificationDto
FutureOr<AddIdentificationDto> deserializeAddIdentificationDto(Map<String, dynamic> json) =>
    AddIdentificationDto.fromJson(json);

FutureOr<List<AddIdentificationDto>> deserializeAddIdentificationDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddIdentificationDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddIdentificationDto(AddIdentificationDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddIdentificationDtoList(List<AddIdentificationDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
