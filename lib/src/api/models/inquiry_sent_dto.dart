// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'inquiry_sent_dto.g.dart';

@JsonSerializable()
class InquirySentDto {
  const InquirySentDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.listingId,
    required this.listingTitle,
    required this.listingSlug,
    required this.listingPrimaryMediaUrl,
    required this.status,
  });
  
  factory InquirySentDto.fromJson(Map<String, Object?> json) => _$InquirySentDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String listingId;
  final String listingTitle;
  final String listingSlug;
  final String? listingPrimaryMediaUrl;
  final String status;

  Map<String, Object?> toJson() => _$InquirySentDtoToJson(this);
}

// Flutter compute serialization functions for InquirySentDto
FutureOr<InquirySentDto> deserializeInquirySentDto(Map<String, dynamic> json) =>
    InquirySentDto.fromJson(json);

FutureOr<List<InquirySentDto>> deserializeInquirySentDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => InquirySentDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeInquirySentDto(InquirySentDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeInquirySentDtoList(List<InquirySentDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
