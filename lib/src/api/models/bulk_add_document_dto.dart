// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'bulk_add_document_dto.g.dart';

@JsonSerializable()
class BulkAddDocumentDto {
  const BulkAddDocumentDto({
    required this.documentTypeId,
    required this.countryId,
    required this.validationPattern,
  });
  
  factory BulkAddDocumentDto.fromJson(Map<String, Object?> json) => _$BulkAddDocumentDtoFromJson(json);
  
  final String documentTypeId;
  final String countryId;
  final String validationPattern;

  Map<String, Object?> toJson() => _$BulkAddDocumentDtoToJson(this);
}

// Flutter compute serialization functions for BulkAddDocumentDto
FutureOr<BulkAddDocumentDto> deserializeBulkAddDocumentDto(Map<String, dynamic> json) =>
    BulkAddDocumentDto.fromJson(json);

FutureOr<List<BulkAddDocumentDto>> deserializeBulkAddDocumentDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => BulkAddDocumentDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeBulkAddDocumentDto(BulkAddDocumentDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeBulkAddDocumentDtoList(List<BulkAddDocumentDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
