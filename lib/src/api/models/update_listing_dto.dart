// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_listing_dto.g.dart';

@JsonSerializable()
class UpdateListingDto {
  const UpdateListingDto({
    required this.title,
    required this.description,
  });
  
  factory UpdateListingDto.fromJson(Map<String, Object?> json) => _$UpdateListingDtoFromJson(json);
  
  final String title;
  final String? description;

  Map<String, Object?> toJson() => _$UpdateListingDtoToJson(this);
}

// Flutter compute serialization functions for UpdateListingDto
FutureOr<UpdateListingDto> deserializeUpdateListingDto(Map<String, dynamic> json) =>
    UpdateListingDto.fromJson(json);

FutureOr<List<UpdateListingDto>> deserializeUpdateListingDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateListingDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateListingDto(UpdateListingDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateListingDtoList(List<UpdateListingDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
