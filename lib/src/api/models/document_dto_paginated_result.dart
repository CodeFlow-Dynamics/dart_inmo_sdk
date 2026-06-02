// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'document_dto.dart';

part 'document_dto_paginated_result.g.dart';

@JsonSerializable()
class DocumentDtoPaginatedResult {
  const DocumentDtoPaginatedResult({
    required this.items,
    required this.pageSize,
    required this.totalCount,
    required this.totalPages,
    required this.currentPage,
    required this.hasNextPage,
    required this.hasPreviousPage,
    required this.nextCursor,
    required this.previousCursor,
    required this.nextPage,
    required this.previousPage,
  });
  
  factory DocumentDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$DocumentDtoPaginatedResultFromJson(json);
  
  final List<DocumentDto> items;
  final int pageSize;
  final int totalCount;
  final int totalPages;
  final int? currentPage;
  final bool hasNextPage;
  final bool hasPreviousPage;
  final String? nextCursor;
  final String? previousCursor;
  final int? nextPage;
  final int? previousPage;

  Map<String, Object?> toJson() => _$DocumentDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for DocumentDtoPaginatedResult
FutureOr<DocumentDtoPaginatedResult> deserializeDocumentDtoPaginatedResult(Map<String, dynamic> json) =>
    DocumentDtoPaginatedResult.fromJson(json);

FutureOr<List<DocumentDtoPaginatedResult>> deserializeDocumentDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => DocumentDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeDocumentDtoPaginatedResult(DocumentDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeDocumentDtoPaginatedResultList(List<DocumentDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
