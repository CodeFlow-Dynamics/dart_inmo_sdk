// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_cluster_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoClusterDto _$GeoClusterDtoFromJson(Map<String, dynamic> json) =>
    GeoClusterDto(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$GeoClusterDtoToJson(GeoClusterDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'count': instance.count,
    };
