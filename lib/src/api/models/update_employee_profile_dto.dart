// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_employee_profile_dto.g.dart';

@JsonSerializable()
class UpdateEmployeeProfileDto {
  const UpdateEmployeeProfileDto({
    required this.firstName,
    required this.lastName,
    required this.avatarMediaId,
  });
  
  factory UpdateEmployeeProfileDto.fromJson(Map<String, Object?> json) => _$UpdateEmployeeProfileDtoFromJson(json);
  
  final String firstName;
  final String lastName;
  final String? avatarMediaId;

  Map<String, Object?> toJson() => _$UpdateEmployeeProfileDtoToJson(this);
}

// Flutter compute serialization functions for UpdateEmployeeProfileDto
FutureOr<UpdateEmployeeProfileDto> deserializeUpdateEmployeeProfileDto(Map<String, dynamic> json) =>
    UpdateEmployeeProfileDto.fromJson(json);

FutureOr<List<UpdateEmployeeProfileDto>> deserializeUpdateEmployeeProfileDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateEmployeeProfileDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateEmployeeProfileDto(UpdateEmployeeProfileDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateEmployeeProfileDtoList(List<UpdateEmployeeProfileDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
