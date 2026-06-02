// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'reindex_result_dto.g.dart';

@JsonSerializable()
class ReindexResultDto {
  const ReindexResultDto({
    required this.totalDocuments,
  });
  
  factory ReindexResultDto.fromJson(Map<String, Object?> json) => _$ReindexResultDtoFromJson(json);
  
  final int totalDocuments;

  Map<String, Object?> toJson() => _$ReindexResultDtoToJson(this);
}

// Flutter compute serialization functions for ReindexResultDto
FutureOr<ReindexResultDto> deserializeReindexResultDto(Map<String, dynamic> json) =>
    ReindexResultDto.fromJson(json);

FutureOr<List<ReindexResultDto>> deserializeReindexResultDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ReindexResultDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeReindexResultDto(ReindexResultDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeReindexResultDtoList(List<ReindexResultDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
