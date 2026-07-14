// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_verification_submission_dto.g.dart';

@JsonSerializable()
class UpdateVerificationSubmissionDto {
  const UpdateVerificationSubmissionDto({
    required this.userNotes,
  });
  
  factory UpdateVerificationSubmissionDto.fromJson(Map<String, Object?> json) => _$UpdateVerificationSubmissionDtoFromJson(json);
  
  final String? userNotes;

  Map<String, Object?> toJson() => _$UpdateVerificationSubmissionDtoToJson(this);
}

// Flutter compute serialization functions for UpdateVerificationSubmissionDto
FutureOr<UpdateVerificationSubmissionDto> deserializeUpdateVerificationSubmissionDto(Map<String, dynamic> json) =>
    UpdateVerificationSubmissionDto.fromJson(json);

FutureOr<List<UpdateVerificationSubmissionDto>> deserializeUpdateVerificationSubmissionDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateVerificationSubmissionDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateVerificationSubmissionDto(UpdateVerificationSubmissionDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateVerificationSubmissionDtoList(List<UpdateVerificationSubmissionDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
