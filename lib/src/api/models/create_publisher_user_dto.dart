// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'create_publisher_user_dto.g.dart';

@JsonSerializable()
class CreatePublisherUserDto {
  const CreatePublisherUserDto({
    required this.publisherTypeId,
    required this.name,
    required this.description,
  });
  
  factory CreatePublisherUserDto.fromJson(Map<String, Object?> json) => _$CreatePublisherUserDtoFromJson(json);
  
  final String publisherTypeId;
  final String name;
  final String? description;

  Map<String, Object?> toJson() => _$CreatePublisherUserDtoToJson(this);
}

// Flutter compute serialization functions for CreatePublisherUserDto
FutureOr<CreatePublisherUserDto> deserializeCreatePublisherUserDto(Map<String, dynamic> json) =>
    CreatePublisherUserDto.fromJson(json);

FutureOr<List<CreatePublisherUserDto>> deserializeCreatePublisherUserDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => CreatePublisherUserDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeCreatePublisherUserDto(CreatePublisherUserDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeCreatePublisherUserDtoList(List<CreatePublisherUserDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
