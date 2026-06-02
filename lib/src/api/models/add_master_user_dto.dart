// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_master_user_dto.g.dart';

@JsonSerializable()
class AddMasterUserDto {
  const AddMasterUserDto({
    required this.email,
    required this.password,
    required this.repeatPassword,
    required this.firstName,
    required this.lastName,
    required this.countryCode,
    required this.phoneNumber,
    required this.preferredLanguage,
  });
  
  factory AddMasterUserDto.fromJson(Map<String, Object?> json) => _$AddMasterUserDtoFromJson(json);
  
  final String email;
  final String password;
  final String repeatPassword;
  final String firstName;
  final String lastName;
  final String countryCode;
  final String phoneNumber;
  final String? preferredLanguage;

  Map<String, Object?> toJson() => _$AddMasterUserDtoToJson(this);
}

// Flutter compute serialization functions for AddMasterUserDto
FutureOr<AddMasterUserDto> deserializeAddMasterUserDto(Map<String, dynamic> json) =>
    AddMasterUserDto.fromJson(json);

FutureOr<List<AddMasterUserDto>> deserializeAddMasterUserDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddMasterUserDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddMasterUserDto(AddMasterUserDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddMasterUserDtoList(List<AddMasterUserDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
