// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'geo_cluster_dto.g.dart';

@JsonSerializable()
class GeoClusterDto {
  const GeoClusterDto({
    required this.latitude,
    required this.longitude,
    required this.count,
  });
  
  factory GeoClusterDto.fromJson(Map<String, Object?> json) => _$GeoClusterDtoFromJson(json);
  
  final double latitude;
  final double longitude;
  final int count;

  Map<String, Object?> toJson() => _$GeoClusterDtoToJson(this);
}

// Flutter compute serialization functions for GeoClusterDto
FutureOr<GeoClusterDto> deserializeGeoClusterDto(Map<String, dynamic> json) =>
    GeoClusterDto.fromJson(json);

FutureOr<List<GeoClusterDto>> deserializeGeoClusterDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => GeoClusterDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeGeoClusterDto(GeoClusterDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeGeoClusterDtoList(List<GeoClusterDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
