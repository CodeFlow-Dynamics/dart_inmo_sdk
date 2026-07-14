// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'publisher_user_dto.g.dart';

@JsonSerializable()
class PublisherUserDto {
  const PublisherUserDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.type,
    required this.name,
    required this.description,
    required this.status,
  });
  
  factory PublisherUserDto.fromJson(Map<String, Object?> json) => _$PublisherUserDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String type;
  final String name;
  final String? description;
  final String status;

  Map<String, Object?> toJson() => _$PublisherUserDtoToJson(this);
}

// Flutter compute serialization functions for PublisherUserDto
FutureOr<PublisherUserDto> deserializePublisherUserDto(Map<String, dynamic> json) =>
    PublisherUserDto.fromJson(json);

FutureOr<List<PublisherUserDto>> deserializePublisherUserDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PublisherUserDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePublisherUserDto(PublisherUserDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePublisherUserDtoList(List<PublisherUserDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
