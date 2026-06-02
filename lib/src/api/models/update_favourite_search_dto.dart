// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'favourite_search_filters.dart';
import 'favourite_search_geo_bounds.dart';

part 'update_favourite_search_dto.g.dart';

@JsonSerializable()
class UpdateFavouriteSearchDto {
  const UpdateFavouriteSearchDto({
    required this.name,
    required this.query,
    required this.filters,
    required this.geoBounds,
    required this.notificationChannels,
  });
  
  factory UpdateFavouriteSearchDto.fromJson(Map<String, Object?> json) => _$UpdateFavouriteSearchDtoFromJson(json);
  
  final String name;
  final String? query;
  final FavouriteSearchFilters filters;
  final FavouriteSearchGeoBounds geoBounds;
  final List<String> notificationChannels;

  Map<String, Object?> toJson() => _$UpdateFavouriteSearchDtoToJson(this);
}

// Flutter compute serialization functions for UpdateFavouriteSearchDto
FutureOr<UpdateFavouriteSearchDto> deserializeUpdateFavouriteSearchDto(Map<String, dynamic> json) =>
    UpdateFavouriteSearchDto.fromJson(json);

FutureOr<List<UpdateFavouriteSearchDto>> deserializeUpdateFavouriteSearchDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateFavouriteSearchDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateFavouriteSearchDto(UpdateFavouriteSearchDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateFavouriteSearchDtoList(List<UpdateFavouriteSearchDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
