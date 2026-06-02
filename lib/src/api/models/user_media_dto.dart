// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'user_media_dto.g.dart';

@JsonSerializable()
class UserMediaDto {
  const UserMediaDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.link,
    required this.userId,
    required this.mediaTypeId,
  });
  
  factory UserMediaDto.fromJson(Map<String, Object?> json) => _$UserMediaDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String link;
  final String userId;
  final String mediaTypeId;

  Map<String, Object?> toJson() => _$UserMediaDtoToJson(this);
}

// Flutter compute serialization functions for UserMediaDto
FutureOr<UserMediaDto> deserializeUserMediaDto(Map<String, dynamic> json) =>
    UserMediaDto.fromJson(json);

FutureOr<List<UserMediaDto>> deserializeUserMediaDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UserMediaDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUserMediaDto(UserMediaDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUserMediaDtoList(List<UserMediaDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
