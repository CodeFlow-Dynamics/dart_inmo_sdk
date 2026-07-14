// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'create_listing_dto.g.dart';

@JsonSerializable()
class CreateListingDto {
  const CreateListingDto({
    required this.publisherId,
    required this.propertyId,
    required this.title,
    required this.description,
  });
  
  factory CreateListingDto.fromJson(Map<String, Object?> json) => _$CreateListingDtoFromJson(json);
  
  final String publisherId;
  final String propertyId;
  final String title;
  final String? description;

  Map<String, Object?> toJson() => _$CreateListingDtoToJson(this);
}

// Flutter compute serialization functions for CreateListingDto
FutureOr<CreateListingDto> deserializeCreateListingDto(Map<String, dynamic> json) =>
    CreateListingDto.fromJson(json);

FutureOr<List<CreateListingDto>> deserializeCreateListingDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => CreateListingDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeCreateListingDto(CreateListingDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeCreateListingDtoList(List<CreateListingDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
