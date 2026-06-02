// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'set_listing_amenities_dto.g.dart';

@JsonSerializable()
class SetListingAmenitiesDto {
  const SetListingAmenitiesDto({
    required this.amenityIds,
  });
  
  factory SetListingAmenitiesDto.fromJson(Map<String, Object?> json) => _$SetListingAmenitiesDtoFromJson(json);
  
  final List<String> amenityIds;

  Map<String, Object?> toJson() => _$SetListingAmenitiesDtoToJson(this);
}

// Flutter compute serialization functions for SetListingAmenitiesDto
FutureOr<SetListingAmenitiesDto> deserializeSetListingAmenitiesDto(Map<String, dynamic> json) =>
    SetListingAmenitiesDto.fromJson(json);

FutureOr<List<SetListingAmenitiesDto>> deserializeSetListingAmenitiesDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SetListingAmenitiesDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSetListingAmenitiesDto(SetListingAmenitiesDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSetListingAmenitiesDtoList(List<SetListingAmenitiesDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
