// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'user_dto.dart';

part 'user_dto_paginated_result.g.dart';

@JsonSerializable()
class UserDtoPaginatedResult {
  const UserDtoPaginatedResult({
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
  
  factory UserDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$UserDtoPaginatedResultFromJson(json);
  
  final List<UserDto> items;
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

  Map<String, Object?> toJson() => _$UserDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for UserDtoPaginatedResult
FutureOr<UserDtoPaginatedResult> deserializeUserDtoPaginatedResult(Map<String, dynamic> json) =>
    UserDtoPaginatedResult.fromJson(json);

FutureOr<List<UserDtoPaginatedResult>> deserializeUserDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => UserDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUserDtoPaginatedResult(UserDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUserDtoPaginatedResultList(List<UserDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
