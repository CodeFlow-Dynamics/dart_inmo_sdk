// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'inmo_category_dto.dart';

part 'list_inmo_categories_response_dto.g.dart';

@JsonSerializable()
class ListInmoCategoriesResponseDto {
  const ListInmoCategoriesResponseDto({
    required this.items,
  });
  
  factory ListInmoCategoriesResponseDto.fromJson(Map<String, Object?> json) => _$ListInmoCategoriesResponseDtoFromJson(json);
  
  final List<InmoCategoryDto> items;

  Map<String, Object?> toJson() => _$ListInmoCategoriesResponseDtoToJson(this);
}

// Flutter compute serialization functions for ListInmoCategoriesResponseDto
FutureOr<ListInmoCategoriesResponseDto> deserializeListInmoCategoriesResponseDto(Map<String, dynamic> json) =>
    ListInmoCategoriesResponseDto.fromJson(json);

FutureOr<List<ListInmoCategoriesResponseDto>> deserializeListInmoCategoriesResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListInmoCategoriesResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListInmoCategoriesResponseDto(ListInmoCategoriesResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListInmoCategoriesResponseDtoList(List<ListInmoCategoriesResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
