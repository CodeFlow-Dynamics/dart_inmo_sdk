// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'verification_submission_history_dto.g.dart';

@JsonSerializable()
class VerificationSubmissionHistoryDto {
  const VerificationSubmissionHistoryDto({
    required this.id,
    required this.verificationSubmissionId,
    required this.previousStatus,
    required this.newStatus,
    required this.reviewerNotes,
    required this.changedByUserId,
    required this.changedAt,
  });
  
  factory VerificationSubmissionHistoryDto.fromJson(Map<String, Object?> json) => _$VerificationSubmissionHistoryDtoFromJson(json);
  
  final String id;
  final String verificationSubmissionId;
  final String previousStatus;
  final String newStatus;
  final String reviewerNotes;
  final String changedByUserId;
  final String changedAt;

  Map<String, Object?> toJson() => _$VerificationSubmissionHistoryDtoToJson(this);
}

// Flutter compute serialization functions for VerificationSubmissionHistoryDto
FutureOr<VerificationSubmissionHistoryDto> deserializeVerificationSubmissionHistoryDto(Map<String, dynamic> json) =>
    VerificationSubmissionHistoryDto.fromJson(json);

FutureOr<List<VerificationSubmissionHistoryDto>> deserializeVerificationSubmissionHistoryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => VerificationSubmissionHistoryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeVerificationSubmissionHistoryDto(VerificationSubmissionHistoryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeVerificationSubmissionHistoryDtoList(List<VerificationSubmissionHistoryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
