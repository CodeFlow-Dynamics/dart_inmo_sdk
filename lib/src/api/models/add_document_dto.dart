// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_document_dto.g.dart';

@JsonSerializable()
class AddDocumentDto {
  const AddDocumentDto({
    required this.documentTypeId,
    required this.countryId,
    required this.validationPattern,
  });
  
  factory AddDocumentDto.fromJson(Map<String, Object?> json) => _$AddDocumentDtoFromJson(json);
  
  final String documentTypeId;
  final String countryId;
  final String validationPattern;

  Map<String, Object?> toJson() => _$AddDocumentDtoToJson(this);
}

// Flutter compute serialization functions for AddDocumentDto
FutureOr<AddDocumentDto> deserializeAddDocumentDto(Map<String, dynamic> json) =>
    AddDocumentDto.fromJson(json);

FutureOr<List<AddDocumentDto>> deserializeAddDocumentDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddDocumentDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddDocumentDto(AddDocumentDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddDocumentDtoList(List<AddDocumentDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
