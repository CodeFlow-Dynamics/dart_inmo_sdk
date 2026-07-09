// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'employee_profile_dto.g.dart';

@JsonSerializable()
class EmployeeProfileDto {
  const EmployeeProfileDto({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.language,
    required this.avatarUrl,
    required this.role,
    required this.createdAt,
  });
  
  factory EmployeeProfileDto.fromJson(Map<String, Object?> json) => _$EmployeeProfileDtoFromJson(json);
  
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String language;
  final String? avatarUrl;
  final String role;
  final String createdAt;

  Map<String, Object?> toJson() => _$EmployeeProfileDtoToJson(this);
}

// Flutter compute serialization functions for EmployeeProfileDto
FutureOr<EmployeeProfileDto> deserializeEmployeeProfileDto(Map<String, dynamic> json) =>
    EmployeeProfileDto.fromJson(json);

FutureOr<List<EmployeeProfileDto>> deserializeEmployeeProfileDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => EmployeeProfileDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeEmployeeProfileDto(EmployeeProfileDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeEmployeeProfileDtoList(List<EmployeeProfileDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
