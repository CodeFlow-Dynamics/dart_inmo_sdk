// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'listing_summary_dto.dart';

part 'listing_summary_dto_paginated_result.g.dart';

@JsonSerializable()
class ListingSummaryDtoPaginatedResult {
  const ListingSummaryDtoPaginatedResult({
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
  
  factory ListingSummaryDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$ListingSummaryDtoPaginatedResultFromJson(json);
  
  final List<ListingSummaryDto> items;
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

  Map<String, Object?> toJson() => _$ListingSummaryDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for ListingSummaryDtoPaginatedResult
FutureOr<ListingSummaryDtoPaginatedResult> deserializeListingSummaryDtoPaginatedResult(Map<String, dynamic> json) =>
    ListingSummaryDtoPaginatedResult.fromJson(json);

FutureOr<List<ListingSummaryDtoPaginatedResult>> deserializeListingSummaryDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingSummaryDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingSummaryDtoPaginatedResult(ListingSummaryDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingSummaryDtoPaginatedResultList(List<ListingSummaryDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
