// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'publisher_member_dto.dart';

part 'list_publisher_members_response_dto.g.dart';

@JsonSerializable()
class ListPublisherMembersResponseDto {
  const ListPublisherMembersResponseDto({
    required this.members,
  });
  
  factory ListPublisherMembersResponseDto.fromJson(Map<String, Object?> json) => _$ListPublisherMembersResponseDtoFromJson(json);
  
  final List<PublisherMemberDto> members;

  Map<String, Object?> toJson() => _$ListPublisherMembersResponseDtoToJson(this);
}

// Flutter compute serialization functions for ListPublisherMembersResponseDto
FutureOr<ListPublisherMembersResponseDto> deserializeListPublisherMembersResponseDto(Map<String, dynamic> json) =>
    ListPublisherMembersResponseDto.fromJson(json);

FutureOr<List<ListPublisherMembersResponseDto>> deserializeListPublisherMembersResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListPublisherMembersResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListPublisherMembersResponseDto(ListPublisherMembersResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListPublisherMembersResponseDtoList(List<ListPublisherMembersResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
