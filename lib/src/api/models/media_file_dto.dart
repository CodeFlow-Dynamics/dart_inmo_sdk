// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'media_variant_dto.dart';

part 'media_file_dto.g.dart';

@JsonSerializable()
class MediaFileDto {
  const MediaFileDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.publicUrl,
    required this.ownerType,
    required this.mediaType,
    required this.uploadedAt,
    required this.variants,
  });
  
  factory MediaFileDto.fromJson(Map<String, Object?> json) => _$MediaFileDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String status;
  final String? publicUrl;
  final String ownerType;
  final String mediaType;
  final String uploadedAt;
  final List<MediaVariantDto> variants;

  Map<String, Object?> toJson() => _$MediaFileDtoToJson(this);
}

// Flutter compute serialization functions for MediaFileDto
FutureOr<MediaFileDto> deserializeMediaFileDto(Map<String, dynamic> json) =>
    MediaFileDto.fromJson(json);

FutureOr<List<MediaFileDto>> deserializeMediaFileDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => MediaFileDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeMediaFileDto(MediaFileDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeMediaFileDtoList(List<MediaFileDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
