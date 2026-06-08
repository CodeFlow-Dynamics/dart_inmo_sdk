// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_inquiry_status_dto.g.dart';

@JsonSerializable()
class UpdateInquiryStatusDto {
  const UpdateInquiryStatusDto({
    required this.status,
    this.closeReason,
  });
  
  factory UpdateInquiryStatusDto.fromJson(Map<String, Object?> json) => _$UpdateInquiryStatusDtoFromJson(json);
  
  final String status;
  final String? closeReason;

  Map<String, Object?> toJson() => _$UpdateInquiryStatusDtoToJson(this);
}

// Flutter compute serialization functions for UpdateInquiryStatusDto
FutureOr<UpdateInquiryStatusDto> deserializeUpdateInquiryStatusDto(Map<String, dynamic> json) =>
    UpdateInquiryStatusDto.fromJson(json);

FutureOr<List<UpdateInquiryStatusDto>> deserializeUpdateInquiryStatusDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateInquiryStatusDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateInquiryStatusDto(UpdateInquiryStatusDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateInquiryStatusDtoList(List<UpdateInquiryStatusDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
