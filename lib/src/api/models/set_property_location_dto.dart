// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'set_property_location_dto.g.dart';

@JsonSerializable()
class SetPropertyLocationDto {
  const SetPropertyLocationDto({
    required this.administrativeDivisionId,
    required this.street,
    required this.latitude,
    required this.longitude,
  });
  
  factory SetPropertyLocationDto.fromJson(Map<String, Object?> json) => _$SetPropertyLocationDtoFromJson(json);
  
  final String administrativeDivisionId;
  final String? street;
  final double? latitude;
  final double? longitude;

  Map<String, Object?> toJson() => _$SetPropertyLocationDtoToJson(this);
}

// Flutter compute serialization functions for SetPropertyLocationDto
FutureOr<SetPropertyLocationDto> deserializeSetPropertyLocationDto(Map<String, dynamic> json) =>
    SetPropertyLocationDto.fromJson(json);

FutureOr<List<SetPropertyLocationDto>> deserializeSetPropertyLocationDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SetPropertyLocationDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSetPropertyLocationDto(SetPropertyLocationDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSetPropertyLocationDtoList(List<SetPropertyLocationDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
