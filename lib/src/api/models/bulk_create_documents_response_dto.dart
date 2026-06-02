// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'document_dto.dart';

part 'bulk_create_documents_response_dto.g.dart';

@JsonSerializable()
class BulkCreateDocumentsResponseDto {
  const BulkCreateDocumentsResponseDto({
    required this.documents,
  });
  
  factory BulkCreateDocumentsResponseDto.fromJson(Map<String, Object?> json) => _$BulkCreateDocumentsResponseDtoFromJson(json);
  
  final List<DocumentDto> documents;

  Map<String, Object?> toJson() => _$BulkCreateDocumentsResponseDtoToJson(this);
}

// Flutter compute serialization functions for BulkCreateDocumentsResponseDto
FutureOr<BulkCreateDocumentsResponseDto> deserializeBulkCreateDocumentsResponseDto(Map<String, dynamic> json) =>
    BulkCreateDocumentsResponseDto.fromJson(json);

FutureOr<List<BulkCreateDocumentsResponseDto>> deserializeBulkCreateDocumentsResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => BulkCreateDocumentsResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeBulkCreateDocumentsResponseDto(BulkCreateDocumentsResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeBulkCreateDocumentsResponseDtoList(List<BulkCreateDocumentsResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
