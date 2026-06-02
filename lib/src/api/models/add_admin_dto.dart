// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_admin_dto.g.dart';

@JsonSerializable()
class AddAdminDto {
  const AddAdminDto({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.preferredLanguage,
    required this.initialSubroles,
  });
  
  factory AddAdminDto.fromJson(Map<String, Object?> json) => _$AddAdminDtoFromJson(json);
  
  final String email;
  final String firstName;
  final String lastName;
  final String? preferredLanguage;
  final List<String>? initialSubroles;

  Map<String, Object?> toJson() => _$AddAdminDtoToJson(this);
}

// Flutter compute serialization functions for AddAdminDto
FutureOr<AddAdminDto> deserializeAddAdminDto(Map<String, dynamic> json) =>
    AddAdminDto.fromJson(json);

FutureOr<List<AddAdminDto>> deserializeAddAdminDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddAdminDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddAdminDto(AddAdminDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddAdminDtoList(List<AddAdminDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
