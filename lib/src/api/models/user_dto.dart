// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  const UserDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.firstName,
    required this.lastName,
    required this.preferredLanguage,
  });
  
  factory UserDto.fromJson(Map<String, Object?> json) => _$UserDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String firstName;
  final String lastName;
  final String preferredLanguage;

  Map<String, Object?> toJson() => _$UserDtoToJson(this);
}

// Flutter compute serialization functions for UserDto
FutureOr<UserDto> deserializeUserDto(Map<String, dynamic> json) =>
    UserDto.fromJson(json);

FutureOr<List<UserDto>> deserializeUserDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UserDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUserDto(UserDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUserDtoList(List<UserDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
