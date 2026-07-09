// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_publisher_member_dto.g.dart';

@JsonSerializable()
class AddPublisherMemberDto {
  const AddPublisherMemberDto({
    required this.role,
    this.clientUserId,
  });
  
  factory AddPublisherMemberDto.fromJson(Map<String, Object?> json) => _$AddPublisherMemberDtoFromJson(json);
  
  final String? clientUserId;
  final String role;

  Map<String, Object?> toJson() => _$AddPublisherMemberDtoToJson(this);
}

// Flutter compute serialization functions for AddPublisherMemberDto
FutureOr<AddPublisherMemberDto> deserializeAddPublisherMemberDto(Map<String, dynamic> json) =>
    AddPublisherMemberDto.fromJson(json);

FutureOr<List<AddPublisherMemberDto>> deserializeAddPublisherMemberDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddPublisherMemberDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddPublisherMemberDto(AddPublisherMemberDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddPublisherMemberDtoList(List<AddPublisherMemberDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
