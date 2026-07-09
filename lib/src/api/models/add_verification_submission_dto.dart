// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_verification_submission_dto.g.dart';

@JsonSerializable()
class AddVerificationSubmissionDto {
  const AddVerificationSubmissionDto({
    required this.authId,
    required this.identificationId,
    required this.userNotes,
  });
  
  factory AddVerificationSubmissionDto.fromJson(Map<String, Object?> json) => _$AddVerificationSubmissionDtoFromJson(json);
  
  final String authId;
  final String identificationId;
  final String? userNotes;

  Map<String, Object?> toJson() => _$AddVerificationSubmissionDtoToJson(this);
}

// Flutter compute serialization functions for AddVerificationSubmissionDto
FutureOr<AddVerificationSubmissionDto> deserializeAddVerificationSubmissionDto(Map<String, dynamic> json) =>
    AddVerificationSubmissionDto.fromJson(json);

FutureOr<List<AddVerificationSubmissionDto>> deserializeAddVerificationSubmissionDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddVerificationSubmissionDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddVerificationSubmissionDto(AddVerificationSubmissionDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddVerificationSubmissionDtoList(List<AddVerificationSubmissionDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
