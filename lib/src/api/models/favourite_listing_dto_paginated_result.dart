// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'favourite_listing_dto.dart';

part 'favourite_listing_dto_paginated_result.g.dart';

@JsonSerializable()
class FavouriteListingDtoPaginatedResult {
  const FavouriteListingDtoPaginatedResult({
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
  
  factory FavouriteListingDtoPaginatedResult.fromJson(Map<String, Object?> json) => _$FavouriteListingDtoPaginatedResultFromJson(json);
  
  final List<FavouriteListingDto> items;
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

  Map<String, Object?> toJson() => _$FavouriteListingDtoPaginatedResultToJson(this);
}

// Flutter compute serialization functions for FavouriteListingDtoPaginatedResult
FutureOr<FavouriteListingDtoPaginatedResult> deserializeFavouriteListingDtoPaginatedResult(Map<String, dynamic> json) =>
    FavouriteListingDtoPaginatedResult.fromJson(json);

FutureOr<List<FavouriteListingDtoPaginatedResult>> deserializeFavouriteListingDtoPaginatedResultList(List<Map<String, dynamic>> json) =>
    json.map((e) => FavouriteListingDtoPaginatedResult.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeFavouriteListingDtoPaginatedResult(FavouriteListingDtoPaginatedResult? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeFavouriteListingDtoPaginatedResultList(List<FavouriteListingDtoPaginatedResult>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
