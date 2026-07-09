// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'media_variant_dto.g.dart';

@JsonSerializable()
class MediaVariantDto {
  const MediaVariantDto({
    required this.type,
    required this.url,
    required this.width,
    required this.height,
    required this.fileSizeBytes,
  });
  
  factory MediaVariantDto.fromJson(Map<String, Object?> json) => _$MediaVariantDtoFromJson(json);
  
  final String type;
  final String url;
  final int? width;
  final int? height;
  final int fileSizeBytes;

  Map<String, Object?> toJson() => _$MediaVariantDtoToJson(this);
}

// Flutter compute serialization functions for MediaVariantDto
FutureOr<MediaVariantDto> deserializeMediaVariantDto(Map<String, dynamic> json) =>
    MediaVariantDto.fromJson(json);

FutureOr<List<MediaVariantDto>> deserializeMediaVariantDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => MediaVariantDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeMediaVariantDto(MediaVariantDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeMediaVariantDtoList(List<MediaVariantDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
