// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_search_geo_bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouriteSearchGeoBounds _$FavouriteSearchGeoBoundsFromJson(
  Map<String, dynamic> json,
) => FavouriteSearchGeoBounds(
  neLat: (json['neLat'] as num).toDouble(),
  neLng: (json['neLng'] as num).toDouble(),
  swLat: (json['swLat'] as num).toDouble(),
  swLng: (json['swLng'] as num).toDouble(),
);

Map<String, dynamic> _$FavouriteSearchGeoBoundsToJson(
  FavouriteSearchGeoBounds instance,
) => <String, dynamic>{
  'neLat': instance.neLat,
  'neLng': instance.neLng,
  'swLat': instance.swLat,
  'swLng': instance.swLng,
};
