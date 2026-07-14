// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_identification_dto.g.dart';

@JsonSerializable()
class UpdateIdentificationDto {
  const UpdateIdentificationDto({
    required this.idNumber,
    required this.validationPattern,
    required this.dateOfBirth,
    required this.expiryDate,
    required this.obverseMediaFileId,
    required this.reverseMediaFileId,
  });
  
  factory UpdateIdentificationDto.fromJson(Map<String, Object?> json) => _$UpdateIdentificationDtoFromJson(json);
  
  final String idNumber;
  final String validationPattern;
  final String dateOfBirth;
  final String expiryDate;
  final String obverseMediaFileId;
  final String? reverseMediaFileId;

  Map<String, Object?> toJson() => _$UpdateIdentificationDtoToJson(this);
}

// Flutter compute serialization functions for UpdateIdentificationDto
FutureOr<UpdateIdentificationDto> deserializeUpdateIdentificationDto(Map<String, dynamic> json) =>
    UpdateIdentificationDto.fromJson(json);

FutureOr<List<UpdateIdentificationDto>> deserializeUpdateIdentificationDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateIdentificationDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateIdentificationDto(UpdateIdentificationDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateIdentificationDtoList(List<UpdateIdentificationDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
