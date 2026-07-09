// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'inquiry_detail_dto.g.dart';

@JsonSerializable()
class InquiryDetailDto {
  const InquiryDetailDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.listingId,
    required this.listingTitle,
    required this.authId,
    required this.inquirerName,
    required this.inquirerEmail,
    required this.inquirerPhone,
    required this.preferredContactChannel,
    required this.message,
    required this.status,
    required this.closeReason,
    required this.closedAt,
  });
  
  factory InquiryDetailDto.fromJson(Map<String, Object?> json) => _$InquiryDetailDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String listingId;
  final String listingTitle;
  final String? authId;
  final String inquirerName;
  final String inquirerEmail;
  final String? inquirerPhone;
  final String preferredContactChannel;
  final String message;
  final String status;
  final String? closeReason;
  final String? closedAt;

  Map<String, Object?> toJson() => _$InquiryDetailDtoToJson(this);
}

// Flutter compute serialization functions for InquiryDetailDto
FutureOr<InquiryDetailDto> deserializeInquiryDetailDto(Map<String, dynamic> json) =>
    InquiryDetailDto.fromJson(json);

FutureOr<List<InquiryDetailDto>> deserializeInquiryDetailDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => InquiryDetailDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeInquiryDetailDto(InquiryDetailDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeInquiryDetailDtoList(List<InquiryDetailDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
