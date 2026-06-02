// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_inquiry_status_result_dto.g.dart';

@JsonSerializable()
class UpdateInquiryStatusResultDto {
  const UpdateInquiryStatusResultDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.closeReason,
    required this.closedAt,
  });
  
  factory UpdateInquiryStatusResultDto.fromJson(Map<String, Object?> json) => _$UpdateInquiryStatusResultDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String status;
  final String? closeReason;
  final String? closedAt;

  Map<String, Object?> toJson() => _$UpdateInquiryStatusResultDtoToJson(this);
}

// Flutter compute serialization functions for UpdateInquiryStatusResultDto
FutureOr<UpdateInquiryStatusResultDto> deserializeUpdateInquiryStatusResultDto(Map<String, dynamic> json) =>
    UpdateInquiryStatusResultDto.fromJson(json);

FutureOr<List<UpdateInquiryStatusResultDto>> deserializeUpdateInquiryStatusResultDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateInquiryStatusResultDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateInquiryStatusResultDto(UpdateInquiryStatusResultDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateInquiryStatusResultDtoList(List<UpdateInquiryStatusResultDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
