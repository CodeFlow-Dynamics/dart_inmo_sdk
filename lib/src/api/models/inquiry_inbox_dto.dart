// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'inquiry_inbox_dto.g.dart';

@JsonSerializable()
class InquiryInboxDto {
  const InquiryInboxDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.listingId,
    required this.listingTitle,
    required this.inquirerName,
    required this.inquirerEmail,
    required this.inquirerPhone,
    required this.preferredContactChannel,
    required this.messagePreview,
    required this.status,
  });
  
  factory InquiryInboxDto.fromJson(Map<String, Object?> json) => _$InquiryInboxDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String listingId;
  final String listingTitle;
  final String inquirerName;
  final String inquirerEmail;
  final String? inquirerPhone;
  final String preferredContactChannel;
  final String messagePreview;
  final String status;

  Map<String, Object?> toJson() => _$InquiryInboxDtoToJson(this);
}

// Flutter compute serialization functions for InquiryInboxDto
FutureOr<InquiryInboxDto> deserializeInquiryInboxDto(Map<String, dynamic> json) =>
    InquiryInboxDto.fromJson(json);

FutureOr<List<InquiryInboxDto>> deserializeInquiryInboxDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => InquiryInboxDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeInquiryInboxDto(InquiryInboxDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeInquiryInboxDtoList(List<InquiryInboxDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
