// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'identification_dto.dart';

part 'identification_dto_paginated_result.g.dart';

@JsonSerializable()
class IdentificationDtoPaginatedResult {
  const IdentificationDtoPaginatedResult({
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
  
  factory IdentificationDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$IdentificationDtoPaginatedResultFromJson(json);
  
  final List<IdentificationDto> items;
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

  Map<String, Object?> toJson() => _$IdentificationDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for IdentificationDtoPaginatedResult
FutureOr<IdentificationDtoPaginatedResult> deserializeIdentificationDtoPaginatedResult(Map<String, dynamic> json) =>
    IdentificationDtoPaginatedResult.fromJson(json);

FutureOr<List<IdentificationDtoPaginatedResult>> deserializeIdentificationDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => IdentificationDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeIdentificationDtoPaginatedResult(IdentificationDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeIdentificationDtoPaginatedResultList(List<IdentificationDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
