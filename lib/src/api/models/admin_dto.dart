// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'admin_dto.g.dart';

@JsonSerializable()
class AdminDto {
  const AdminDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.adminId,
    required this.authId,
    required this.firstName,
    required this.lastName,
    required this.preferredLanguage,
    required this.role,
    required this.status,
  });
  
  factory AdminDto.fromJson(Map<String, Object?> json) => _$AdminDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String adminId;
  final String authId;
  final String firstName;
  final String lastName;
  final String preferredLanguage;
  final String role;
  final String status;

  Map<String, Object?> toJson() => _$AdminDtoToJson(this);
}

// Flutter compute serialization functions for AdminDto
FutureOr<AdminDto> deserializeAdminDto(Map<String, dynamic> json) =>
    AdminDto.fromJson(json);

FutureOr<List<AdminDto>> deserializeAdminDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AdminDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAdminDto(AdminDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAdminDtoList(List<AdminDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
