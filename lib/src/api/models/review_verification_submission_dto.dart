// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'review_verification_submission_dto.g.dart';

@JsonSerializable()
class ReviewVerificationSubmissionDto {
  const ReviewVerificationSubmissionDto({
    required this.reviewerNotes,
    required this.reviewerId,
    this.statusCode,
  });
  
  factory ReviewVerificationSubmissionDto.fromJson(Map<String, Object?> json) => _$ReviewVerificationSubmissionDtoFromJson(json);
  
  final int? statusCode;
  final String reviewerNotes;
  final String reviewerId;

  Map<String, Object?> toJson() => _$ReviewVerificationSubmissionDtoToJson(this);
}

// Flutter compute serialization functions for ReviewVerificationSubmissionDto
FutureOr<ReviewVerificationSubmissionDto> deserializeReviewVerificationSubmissionDto(Map<String, dynamic> json) =>
    ReviewVerificationSubmissionDto.fromJson(json);

FutureOr<List<ReviewVerificationSubmissionDto>> deserializeReviewVerificationSubmissionDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ReviewVerificationSubmissionDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeReviewVerificationSubmissionDto(ReviewVerificationSubmissionDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeReviewVerificationSubmissionDtoList(List<ReviewVerificationSubmissionDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
