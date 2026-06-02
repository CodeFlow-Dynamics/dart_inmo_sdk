// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'document_dto.g.dart';

@JsonSerializable()
class DocumentDto {
  const DocumentDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.documentTypeId,
    required this.countryId,
    required this.validationPattern,
  });
  
  factory DocumentDto.fromJson(Map<String, Object?> json) => _$DocumentDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String documentTypeId;
  final String countryId;
  final String validationPattern;

  Map<String, Object?> toJson() => _$DocumentDtoToJson(this);
}

// Flutter compute serialization functions for DocumentDto
FutureOr<DocumentDto> deserializeDocumentDto(Map<String, dynamic> json) =>
    DocumentDto.fromJson(json);

FutureOr<List<DocumentDto>> deserializeDocumentDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => DocumentDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeDocumentDto(DocumentDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeDocumentDtoList(List<DocumentDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
