// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouriteSearchDto _$FavouriteSearchDtoFromJson(Map<String, dynamic> json) =>
    FavouriteSearchDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      name: json['name'] as String,
      query: json['query'] as String?,
      filters: FavouriteSearchFilters.fromJson(
        json['filters'] as Map<String, dynamic>,
      ),
      geoBounds: FavouriteSearchGeoBounds.fromJson(
        json['geoBounds'] as Map<String, dynamic>,
      ),
      notificationChannels: (json['notificationChannels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$FavouriteSearchDtoToJson(FavouriteSearchDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'name': instance.name,
      'query': instance.query,
      'filters': instance.filters,
      'geoBounds': instance.geoBounds,
      'notificationChannels': instance.notificationChannels,
      'status': instance.status,
    };
