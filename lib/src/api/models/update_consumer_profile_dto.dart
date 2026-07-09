// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_consumer_profile_dto.g.dart';

@JsonSerializable()
class UpdateConsumerProfileDto {
  const UpdateConsumerProfileDto({
    required this.firstName,
    required this.lastName,
    required this.avatarMediaId,
  });
  
  factory UpdateConsumerProfileDto.fromJson(Map<String, Object?> json) => _$UpdateConsumerProfileDtoFromJson(json);
  
  final String firstName;
  final String lastName;
  final String? avatarMediaId;

  Map<String, Object?> toJson() => _$UpdateConsumerProfileDtoToJson(this);
}

// Flutter compute serialization functions for UpdateConsumerProfileDto
FutureOr<UpdateConsumerProfileDto> deserializeUpdateConsumerProfileDto(Map<String, dynamic> json) =>
    UpdateConsumerProfileDto.fromJson(json);

FutureOr<List<UpdateConsumerProfileDto>> deserializeUpdateConsumerProfileDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateConsumerProfileDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateConsumerProfileDto(UpdateConsumerProfileDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateConsumerProfileDtoList(List<UpdateConsumerProfileDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
