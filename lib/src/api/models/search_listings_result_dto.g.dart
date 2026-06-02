// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_listings_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchListingsResultDto _$SearchListingsResultDtoFromJson(
  Map<String, dynamic> json,
) => SearchListingsResultDto(
  items: (json['items'] as List<dynamic>)
      .map((e) => SearchListingItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  facets: SearchFacetsDto.fromJson(json['facets'] as Map<String, dynamic>),
  totalCount: (json['totalCount'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  hasNextPage: json['hasNextPage'] as bool,
  hasPreviousPage: json['hasPreviousPage'] as bool,
  nextCursor: json['nextCursor'] as String?,
  previousCursor: json['previousCursor'] as String?,
);

Map<String, dynamic> _$SearchListingsResultDtoToJson(
  SearchListingsResultDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'facets': instance.facets,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasNextPage': instance.hasNextPage,
  'hasPreviousPage': instance.hasPreviousPage,
  'nextCursor': instance.nextCursor,
  'previousCursor': instance.previousCursor,
};
