// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'favourite_search_filters.dart';
import 'favourite_search_geo_bounds.dart';

part 'create_favourite_search_dto.g.dart';

@JsonSerializable()
class CreateFavouriteSearchDto {
  const CreateFavouriteSearchDto({
    required this.name,
    required this.query,
    required this.filters,
    required this.geoBounds,
    required this.notificationChannels,
  });
  
  factory CreateFavouriteSearchDto.fromJson(Map<String, Object?> json) => _$CreateFavouriteSearchDtoFromJson(json);
  
  final String name;
  final String? query;
  final FavouriteSearchFilters filters;
  final FavouriteSearchGeoBounds geoBounds;
  final List<String> notificationChannels;

  Map<String, Object?> toJson() => _$CreateFavouriteSearchDtoToJson(this);
}

// Flutter compute serialization functions for CreateFavouriteSearchDto
FutureOr<CreateFavouriteSearchDto> deserializeCreateFavouriteSearchDto(Map<String, dynamic> json) =>
    CreateFavouriteSearchDto.fromJson(json);

FutureOr<List<CreateFavouriteSearchDto>> deserializeCreateFavouriteSearchDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => CreateFavouriteSearchDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeCreateFavouriteSearchDto(CreateFavouriteSearchDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeCreateFavouriteSearchDtoList(List<CreateFavouriteSearchDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
