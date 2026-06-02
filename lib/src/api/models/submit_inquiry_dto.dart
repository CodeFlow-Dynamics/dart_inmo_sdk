// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'submit_inquiry_dto.g.dart';

@JsonSerializable()
class SubmitInquiryDto {
  const SubmitInquiryDto({
    required this.listingId,
    required this.inquirerName,
    required this.inquirerEmail,
    required this.message,
    required this.inquirerPhoneCountryCode,
    required this.inquirerPhone,
    required this.preferredContactChannel,
    required this.honeypot,
  });
  
  factory SubmitInquiryDto.fromJson(Map<String, Object?> json) => _$SubmitInquiryDtoFromJson(json);
  
  final String listingId;
  final String inquirerName;
  final String inquirerEmail;
  final String message;
  final String? inquirerPhoneCountryCode;
  final String? inquirerPhone;
  final String? preferredContactChannel;
  final String? honeypot;

  Map<String, Object?> toJson() => _$SubmitInquiryDtoToJson(this);
}

// Flutter compute serialization functions for SubmitInquiryDto
FutureOr<SubmitInquiryDto> deserializeSubmitInquiryDto(Map<String, dynamic> json) =>
    SubmitInquiryDto.fromJson(json);

FutureOr<List<SubmitInquiryDto>> deserializeSubmitInquiryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SubmitInquiryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSubmitInquiryDto(SubmitInquiryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSubmitInquiryDtoList(List<SubmitInquiryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
