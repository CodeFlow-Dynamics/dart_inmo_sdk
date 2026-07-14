// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'publisher_member_dto.g.dart';

@JsonSerializable()
class PublisherMemberDto {
  const PublisherMemberDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.publisherId,
    required this.clientUserId,
    required this.role,
    required this.joinedAt,
    required this.userName,
  });
  
  factory PublisherMemberDto.fromJson(Map<String, Object?> json) => _$PublisherMemberDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String publisherId;
  final String clientUserId;
  final String role;
  final String joinedAt;
  final String userName;

  Map<String, Object?> toJson() => _$PublisherMemberDtoToJson(this);
}

// Flutter compute serialization functions for PublisherMemberDto
FutureOr<PublisherMemberDto> deserializePublisherMemberDto(Map<String, dynamic> json) =>
    PublisherMemberDto.fromJson(json);

FutureOr<List<PublisherMemberDto>> deserializePublisherMemberDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PublisherMemberDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePublisherMemberDto(PublisherMemberDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePublisherMemberDtoList(List<PublisherMemberDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
