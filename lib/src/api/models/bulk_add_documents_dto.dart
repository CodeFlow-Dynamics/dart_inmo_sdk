// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'add_document_dto.dart';

part 'bulk_add_documents_dto.g.dart';

@JsonSerializable()
class BulkAddDocumentsDto {
  const BulkAddDocumentsDto({
    required this.documents,
  });
  
  factory BulkAddDocumentsDto.fromJson(Map<String, Object?> json) => _$BulkAddDocumentsDtoFromJson(json);
  
  final List<AddDocumentDto> documents;

  Map<String, Object?> toJson() => _$BulkAddDocumentsDtoToJson(this);
}

// Flutter compute serialization functions for BulkAddDocumentsDto
FutureOr<BulkAddDocumentsDto> deserializeBulkAddDocumentsDto(Map<String, dynamic> json) =>
    BulkAddDocumentsDto.fromJson(json);

FutureOr<List<BulkAddDocumentsDto>> deserializeBulkAddDocumentsDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => BulkAddDocumentsDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeBulkAddDocumentsDto(BulkAddDocumentsDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeBulkAddDocumentsDtoList(List<BulkAddDocumentsDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
