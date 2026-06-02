// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'favourite_search_filters.dart';
import 'favourite_search_geo_bounds.dart';

part 'favourite_search_dto.g.dart';

@JsonSerializable()
class FavouriteSearchDto {
  const FavouriteSearchDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.query,
    required this.filters,
    required this.geoBounds,
    required this.notificationChannels,
    required this.isPaused,
  });
  
  factory FavouriteSearchDto.fromJson(Map<String, Object?> json) => _$FavouriteSearchDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String name;
  final String? query;
  final FavouriteSearchFilters filters;
  final FavouriteSearchGeoBounds geoBounds;
  final List<String> notificationChannels;
  final bool isPaused;

  Map<String, Object?> toJson() => _$FavouriteSearchDtoToJson(this);
}

// Flutter compute serialization functions for FavouriteSearchDto
FutureOr<FavouriteSearchDto> deserializeFavouriteSearchDto(Map<String, dynamic> json) =>
    FavouriteSearchDto.fromJson(json);

FutureOr<List<FavouriteSearchDto>> deserializeFavouriteSearchDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => FavouriteSearchDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeFavouriteSearchDto(FavouriteSearchDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeFavouriteSearchDtoList(List<FavouriteSearchDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
