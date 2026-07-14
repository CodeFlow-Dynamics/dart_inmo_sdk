// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_publisher_dto.g.dart';

@JsonSerializable()
class UpdatePublisherDto {
  const UpdatePublisherDto({
    required this.type,
    required this.name,
    required this.description,
  });
  
  factory UpdatePublisherDto.fromJson(Map<String, Object?> json) => _$UpdatePublisherDtoFromJson(json);
  
  final String type;
  final String name;
  final String description;

  Map<String, Object?> toJson() => _$UpdatePublisherDtoToJson(this);
}

// Flutter compute serialization functions for UpdatePublisherDto
FutureOr<UpdatePublisherDto> deserializeUpdatePublisherDto(Map<String, dynamic> json) =>
    UpdatePublisherDto.fromJson(json);

FutureOr<List<UpdatePublisherDto>> deserializeUpdatePublisherDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdatePublisherDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdatePublisherDto(UpdatePublisherDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdatePublisherDtoList(List<UpdatePublisherDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
