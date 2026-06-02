// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_favourite_search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateFavouriteSearchDto _$CreateFavouriteSearchDtoFromJson(
  Map<String, dynamic> json,
) => CreateFavouriteSearchDto(
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
);

Map<String, dynamic> _$CreateFavouriteSearchDtoToJson(
  CreateFavouriteSearchDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'query': instance.query,
  'filters': instance.filters,
  'geoBounds': instance.geoBounds,
  'notificationChannels': instance.notificationChannels,
};
