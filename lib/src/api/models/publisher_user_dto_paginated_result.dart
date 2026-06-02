// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'publisher_user_dto.dart';

part 'publisher_user_dto_paginated_result.g.dart';

@JsonSerializable()
class PublisherUserDtoPaginatedResult {
  const PublisherUserDtoPaginatedResult({
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
  
  factory PublisherUserDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$PublisherUserDtoPaginatedResultFromJson(json);
  
  final List<PublisherUserDto> items;
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

  Map<String, Object?> toJson() => _$PublisherUserDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for PublisherUserDtoPaginatedResult
FutureOr<PublisherUserDtoPaginatedResult> deserializePublisherUserDtoPaginatedResult(Map<String, dynamic> json) =>
    PublisherUserDtoPaginatedResult.fromJson(json);

FutureOr<List<PublisherUserDtoPaginatedResult>> deserializePublisherUserDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => PublisherUserDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePublisherUserDtoPaginatedResult(PublisherUserDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePublisherUserDtoPaginatedResultList(List<PublisherUserDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
