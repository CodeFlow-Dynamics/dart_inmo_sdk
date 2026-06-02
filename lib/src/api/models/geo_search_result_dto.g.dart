// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoSearchResultDto _$GeoSearchResultDtoFromJson(Map<String, dynamic> json) =>
    GeoSearchResultDto(
      items: (json['items'] as List<dynamic>)
          .map(
            (e) => GeoSearchListingItemDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      clusters: (json['clusters'] as List<dynamic>)
          .map((e) => GeoClusterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      hasNextPage: json['hasNextPage'] as bool,
      hasPreviousPage: json['hasPreviousPage'] as bool,
      nextCursor: json['nextCursor'] as String?,
      previousCursor: json['previousCursor'] as String?,
    );

Map<String, dynamic> _$GeoSearchResultDtoToJson(GeoSearchResultDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'clusters': instance.clusters,
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'nextCursor': instance.nextCursor,
      'previousCursor': instance.previousCursor,
    };
