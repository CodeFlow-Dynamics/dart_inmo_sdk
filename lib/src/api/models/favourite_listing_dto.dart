// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'favourite_listing_dto.g.dart';

@JsonSerializable()
class FavouriteListingDto {
  const FavouriteListingDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.ownerId,
    required this.listingId,
  });
  
  factory FavouriteListingDto.fromJson(Map<String, Object?> json) => _$FavouriteListingDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String ownerId;
  final String listingId;

  Map<String, Object?> toJson() => _$FavouriteListingDtoToJson(this);
}

// Flutter compute serialization functions for FavouriteListingDto
FutureOr<FavouriteListingDto> deserializeFavouriteListingDto(Map<String, dynamic> json) =>
    FavouriteListingDto.fromJson(json);

FutureOr<List<FavouriteListingDto>> deserializeFavouriteListingDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => FavouriteListingDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeFavouriteListingDto(FavouriteListingDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeFavouriteListingDtoList(List<FavouriteListingDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
