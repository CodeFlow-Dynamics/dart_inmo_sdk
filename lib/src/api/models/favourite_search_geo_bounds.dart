// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'favourite_search_geo_bounds.g.dart';

@JsonSerializable()
class FavouriteSearchGeoBounds {
  const FavouriteSearchGeoBounds({
    required this.neLat,
    required this.neLng,
    required this.swLat,
    required this.swLng,
  });
  
  factory FavouriteSearchGeoBounds.fromJson(Map<String, Object?> json) => _$FavouriteSearchGeoBoundsFromJson(json);
  
  final double neLat;
  final double neLng;
  final double swLat;
  final double swLng;

  Map<String, Object?> toJson() => _$FavouriteSearchGeoBoundsToJson(this);
}

// Flutter compute serialization functions for FavouriteSearchGeoBounds
FutureOr<FavouriteSearchGeoBounds> deserializeFavouriteSearchGeoBounds(Map<String, dynamic> json) =>
    FavouriteSearchGeoBounds.fromJson(json);

FutureOr<List<FavouriteSearchGeoBounds>> deserializeFavouriteSearchGeoBoundsList(List<Map<String, dynamic>> json) =>
    json.map((e) => FavouriteSearchGeoBounds.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeFavouriteSearchGeoBounds(FavouriteSearchGeoBounds? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeFavouriteSearchGeoBoundsList(List<FavouriteSearchGeoBounds>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
