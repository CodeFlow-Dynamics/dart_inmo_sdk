// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'set_property_amenities_dto.g.dart';

@JsonSerializable()
class SetPropertyAmenitiesDto {
  const SetPropertyAmenitiesDto({
    required this.amenityIds,
  });
  
  factory SetPropertyAmenitiesDto.fromJson(Map<String, Object?> json) => _$SetPropertyAmenitiesDtoFromJson(json);
  
  final List<String> amenityIds;

  Map<String, Object?> toJson() => _$SetPropertyAmenitiesDtoToJson(this);
}

// Flutter compute serialization functions for SetPropertyAmenitiesDto
FutureOr<SetPropertyAmenitiesDto> deserializeSetPropertyAmenitiesDto(Map<String, dynamic> json) =>
    SetPropertyAmenitiesDto.fromJson(json);

FutureOr<List<SetPropertyAmenitiesDto>> deserializeSetPropertyAmenitiesDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SetPropertyAmenitiesDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSetPropertyAmenitiesDto(SetPropertyAmenitiesDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSetPropertyAmenitiesDtoList(List<SetPropertyAmenitiesDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
