// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'inquiry_sent_dto.dart';

part 'inquiry_sent_dto_paginated_result.g.dart';

@JsonSerializable()
class InquirySentDtoPaginatedResult {
  const InquirySentDtoPaginatedResult({
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
  
  factory InquirySentDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$InquirySentDtoPaginatedResultFromJson(json);
  
  final List<InquirySentDto> items;
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

  Map<String, Object?> toJson() => _$InquirySentDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for InquirySentDtoPaginatedResult
FutureOr<InquirySentDtoPaginatedResult> deserializeInquirySentDtoPaginatedResult(Map<String, dynamic> json) =>
    InquirySentDtoPaginatedResult.fromJson(json);

FutureOr<List<InquirySentDtoPaginatedResult>> deserializeInquirySentDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => InquirySentDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeInquirySentDtoPaginatedResult(InquirySentDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeInquirySentDtoPaginatedResultList(List<InquirySentDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
