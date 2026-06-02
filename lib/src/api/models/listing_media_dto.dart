// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'listing_media_dto.g.dart';

@JsonSerializable()
class ListingMediaDto {
  const ListingMediaDto({
    required this.id,
    required this.url,
    required this.mediaType,
    required this.caption,
    required this.sortOrder,
    required this.isPrimary,
  });
  
  factory ListingMediaDto.fromJson(Map<String, Object?> json) => _$ListingMediaDtoFromJson(json);
  
  final String id;
  final String url;
  final String mediaType;
  final String? caption;
  final int sortOrder;
  final bool isPrimary;

  Map<String, Object?> toJson() => _$ListingMediaDtoToJson(this);
}

// Flutter compute serialization functions for ListingMediaDto
FutureOr<ListingMediaDto> deserializeListingMediaDto(Map<String, dynamic> json) =>
    ListingMediaDto.fromJson(json);

FutureOr<List<ListingMediaDto>> deserializeListingMediaDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingMediaDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingMediaDto(ListingMediaDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingMediaDtoList(List<ListingMediaDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
