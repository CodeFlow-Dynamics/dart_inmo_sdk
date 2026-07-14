// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'verification_submission_dto.g.dart';

@JsonSerializable()
class VerificationSubmissionDto {
  const VerificationSubmissionDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.clientUserId,
    required this.identificationId,
    required this.status,
    required this.userNotes,
    required this.reviewerNotes,
    required this.reviewerId,
    required this.reviewedAt,
  });
  
  factory VerificationSubmissionDto.fromJson(Map<String, Object?> json) => _$VerificationSubmissionDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String clientUserId;
  final String identificationId;
  final String status;
  final String userNotes;
  final String reviewerNotes;
  final String? reviewerId;
  final String? reviewedAt;

  Map<String, Object?> toJson() => _$VerificationSubmissionDtoToJson(this);
}

// Flutter compute serialization functions for VerificationSubmissionDto
FutureOr<VerificationSubmissionDto> deserializeVerificationSubmissionDto(Map<String, dynamic> json) =>
    VerificationSubmissionDto.fromJson(json);

FutureOr<List<VerificationSubmissionDto>> deserializeVerificationSubmissionDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => VerificationSubmissionDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeVerificationSubmissionDto(VerificationSubmissionDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeVerificationSubmissionDtoList(List<VerificationSubmissionDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
