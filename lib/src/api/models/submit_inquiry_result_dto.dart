// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'submit_inquiry_result_dto.g.dart';

@JsonSerializable()
class SubmitInquiryResultDto {
  const SubmitInquiryResultDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.listingId,
    required this.status,
  });
  
  factory SubmitInquiryResultDto.fromJson(Map<String, Object?> json) => _$SubmitInquiryResultDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String listingId;
  final String status;

  Map<String, Object?> toJson() => _$SubmitInquiryResultDtoToJson(this);
}

// Flutter compute serialization functions for SubmitInquiryResultDto
FutureOr<SubmitInquiryResultDto> deserializeSubmitInquiryResultDto(Map<String, dynamic> json) =>
    SubmitInquiryResultDto.fromJson(json);

FutureOr<List<SubmitInquiryResultDto>> deserializeSubmitInquiryResultDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SubmitInquiryResultDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSubmitInquiryResultDto(SubmitInquiryResultDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSubmitInquiryResultDtoList(List<SubmitInquiryResultDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
