// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'inquiry_inbox_dto.dart';

part 'inquiry_inbox_dto_paginated_result.g.dart';

@JsonSerializable()
class InquiryInboxDtoPaginatedResult {
  const InquiryInboxDtoPaginatedResult({
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
  
  factory InquiryInboxDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$InquiryInboxDtoPaginatedResultFromJson(json);
  
  final List<InquiryInboxDto> items;
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

  Map<String, Object?> toJson() => _$InquiryInboxDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for InquiryInboxDtoPaginatedResult
FutureOr<InquiryInboxDtoPaginatedResult> deserializeInquiryInboxDtoPaginatedResult(Map<String, dynamic> json) =>
    InquiryInboxDtoPaginatedResult.fromJson(json);

FutureOr<List<InquiryInboxDtoPaginatedResult>> deserializeInquiryInboxDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => InquiryInboxDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeInquiryInboxDtoPaginatedResult(InquiryInboxDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeInquiryInboxDtoPaginatedResultList(List<InquiryInboxDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
