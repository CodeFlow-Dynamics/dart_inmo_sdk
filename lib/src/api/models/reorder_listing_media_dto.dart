// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'reorder_listing_media_dto.g.dart';

@JsonSerializable()
class ReorderListingMediaDto {
  const ReorderListingMediaDto({
    required this.mediaIds,
  });
  
  factory ReorderListingMediaDto.fromJson(Map<String, Object?> json) => _$ReorderListingMediaDtoFromJson(json);
  
  final List<String> mediaIds;

  Map<String, Object?> toJson() => _$ReorderListingMediaDtoToJson(this);
}

// Flutter compute serialization functions for ReorderListingMediaDto
FutureOr<ReorderListingMediaDto> deserializeReorderListingMediaDto(Map<String, dynamic> json) =>
    ReorderListingMediaDto.fromJson(json);

FutureOr<List<ReorderListingMediaDto>> deserializeReorderListingMediaDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ReorderListingMediaDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeReorderListingMediaDto(ReorderListingMediaDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeReorderListingMediaDtoList(List<ReorderListingMediaDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
