// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeProfileDto _$EmployeeProfileDtoFromJson(Map<String, dynamic> json) =>
    EmployeeProfileDto(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      language: json['language'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      role: json['role'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$EmployeeProfileDtoToJson(EmployeeProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'language': instance.language,
      'avatarUrl': instance.avatarUrl,
      'role': instance.role,
      'createdAt': instance.createdAt,
    };
