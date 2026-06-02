// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_document_dto.g.dart';

@JsonSerializable()
class UpdateDocumentDto {
  const UpdateDocumentDto({
    required this.validationPattern,
  });
  
  factory UpdateDocumentDto.fromJson(Map<String, Object?> json) => _$UpdateDocumentDtoFromJson(json);
  
  final String validationPattern;

  Map<String, Object?> toJson() => _$UpdateDocumentDtoToJson(this);
}

// Flutter compute serialization functions for UpdateDocumentDto
FutureOr<UpdateDocumentDto> deserializeUpdateDocumentDto(Map<String, dynamic> json) =>
    UpdateDocumentDto.fromJson(json);

FutureOr<List<UpdateDocumentDto>> deserializeUpdateDocumentDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateDocumentDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateDocumentDto(UpdateDocumentDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateDocumentDtoList(List<UpdateDocumentDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
