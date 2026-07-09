// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'publisher_membership_summary_dto.dart';

part 'consumer_profile_dto.g.dart';

@JsonSerializable()
class ConsumerProfileDto {
  const ConsumerProfileDto({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.language,
    required this.avatarUrl,
    required this.type,
    required this.phoneCount,
    required this.identificationStatus,
    required this.publisherMemberships,
    required this.createdAt,
  });
  
  factory ConsumerProfileDto.fromJson(Map<String, Object?> json) => _$ConsumerProfileDtoFromJson(json);
  
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String language;
  final String? avatarUrl;
  final String type;
  final int phoneCount;
  final String? identificationStatus;
  final List<PublisherMembershipSummaryDto> publisherMemberships;
  final String createdAt;

  Map<String, Object?> toJson() => _$ConsumerProfileDtoToJson(this);
}

// Flutter compute serialization functions for ConsumerProfileDto
FutureOr<ConsumerProfileDto> deserializeConsumerProfileDto(Map<String, dynamic> json) =>
    ConsumerProfileDto.fromJson(json);

FutureOr<List<ConsumerProfileDto>> deserializeConsumerProfileDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ConsumerProfileDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeConsumerProfileDto(ConsumerProfileDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeConsumerProfileDtoList(List<ConsumerProfileDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
