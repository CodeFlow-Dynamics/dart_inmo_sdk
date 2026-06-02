// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_summary_dto_paginated_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingSummaryDtoPaginatedResult _$ListingSummaryDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => ListingSummaryDtoPaginatedResult(
  items: (json['items'] as List<dynamic>)
      .map((e) => ListingSummaryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  currentPage: (json['currentPage'] as num?)?.toInt(),
  hasNextPage: json['hasNextPage'] as bool,
  hasPreviousPage: json['hasPreviousPage'] as bool,
  nextCursor: json['nextCursor'] as String?,
  previousCursor: json['previousCursor'] as String?,
  nextPage: (json['nextPage'] as num?)?.toInt(),
  previousPage: (json['previousPage'] as num?)?.toInt(),
);

Map<String, dynamic> _$ListingSummaryDtoPaginatedResultToJson(
  ListingSummaryDtoPaginatedResult instance,
) => <String, dynamic>{
  'items': instance.items,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'currentPage': instance.currentPage,
  'hasNextPage': instance.hasNextPage,
  'hasPreviousPage': instance.hasPreviousPage,
  'nextCursor': instance.nextCursor,
  'previousCursor': instance.previousCursor,
  'nextPage': instance.nextPage,
  'previousPage': instance.previousPage,
};
