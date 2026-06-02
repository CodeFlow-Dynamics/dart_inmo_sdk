// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_listing_media_dto.g.dart';

@JsonSerializable()
class AddListingMediaDto {
  const AddListingMediaDto({
    required this.url,
    required this.mediaType,
    required this.caption,
  });
  
  factory AddListingMediaDto.fromJson(Map<String, Object?> json) => _$AddListingMediaDtoFromJson(json);
  
  final String url;
  final String mediaType;
  final String? caption;

  Map<String, Object?> toJson() => _$AddListingMediaDtoToJson(this);
}

// Flutter compute serialization functions for AddListingMediaDto
FutureOr<AddListingMediaDto> deserializeAddListingMediaDto(Map<String, dynamic> json) =>
    AddListingMediaDto.fromJson(json);

FutureOr<List<AddListingMediaDto>> deserializeAddListingMediaDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddListingMediaDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddListingMediaDto(AddListingMediaDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddListingMediaDtoList(List<AddListingMediaDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
