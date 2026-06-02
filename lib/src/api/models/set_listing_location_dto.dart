// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'set_listing_location_dto.g.dart';

@JsonSerializable()
class SetListingLocationDto {
  const SetListingLocationDto({
    required this.administrativeDivisionId,
    required this.street,
    required this.postalCode,
    required this.latitude,
    required this.longitude,
  });
  
  factory SetListingLocationDto.fromJson(Map<String, Object?> json) => _$SetListingLocationDtoFromJson(json);
  
  final String administrativeDivisionId;
  final String? street;
  final String? postalCode;
  final double? latitude;
  final double? longitude;

  Map<String, Object?> toJson() => _$SetListingLocationDtoToJson(this);
}

// Flutter compute serialization functions for SetListingLocationDto
FutureOr<SetListingLocationDto> deserializeSetListingLocationDto(Map<String, dynamic> json) =>
    SetListingLocationDto.fromJson(json);

FutureOr<List<SetListingLocationDto>> deserializeSetListingLocationDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SetListingLocationDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSetListingLocationDto(SetListingLocationDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSetListingLocationDtoList(List<SetListingLocationDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
