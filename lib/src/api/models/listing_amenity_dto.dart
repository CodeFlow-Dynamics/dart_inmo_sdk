// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'listing_amenity_dto.g.dart';

@JsonSerializable()
class ListingAmenityDto {
  const ListingAmenityDto({
    required this.id,
    required this.amenityId,
  });
  
  factory ListingAmenityDto.fromJson(Map<String, Object?> json) => _$ListingAmenityDtoFromJson(json);
  
  final String id;
  final String amenityId;

  Map<String, Object?> toJson() => _$ListingAmenityDtoToJson(this);
}

// Flutter compute serialization functions for ListingAmenityDto
FutureOr<ListingAmenityDto> deserializeListingAmenityDto(Map<String, dynamic> json) =>
    ListingAmenityDto.fromJson(json);

FutureOr<List<ListingAmenityDto>> deserializeListingAmenityDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingAmenityDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingAmenityDto(ListingAmenityDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingAmenityDtoList(List<ListingAmenityDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
