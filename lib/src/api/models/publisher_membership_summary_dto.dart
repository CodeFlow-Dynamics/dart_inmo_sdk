// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'publisher_membership_summary_dto.g.dart';

@JsonSerializable()
class PublisherMembershipSummaryDto {
  const PublisherMembershipSummaryDto({
    required this.publisherId,
    required this.role,
  });
  
  factory PublisherMembershipSummaryDto.fromJson(Map<String, Object?> json) => _$PublisherMembershipSummaryDtoFromJson(json);
  
  final String publisherId;
  final String role;

  Map<String, Object?> toJson() => _$PublisherMembershipSummaryDtoToJson(this);
}

// Flutter compute serialization functions for PublisherMembershipSummaryDto
FutureOr<PublisherMembershipSummaryDto> deserializePublisherMembershipSummaryDto(Map<String, dynamic> json) =>
    PublisherMembershipSummaryDto.fromJson(json);

FutureOr<List<PublisherMembershipSummaryDto>> deserializePublisherMembershipSummaryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PublisherMembershipSummaryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePublisherMembershipSummaryDto(PublisherMembershipSummaryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePublisherMembershipSummaryDtoList(List<PublisherMembershipSummaryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
