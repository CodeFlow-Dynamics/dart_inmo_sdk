// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminDto _$AdminDtoFromJson(Map<String, dynamic> json) => AdminDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  adminId: json['adminId'] as String,
  authId: json['authId'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  preferredLanguage: json['preferredLanguage'] as String,
  role: json['role'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$AdminDtoToJson(AdminDto instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'adminId': instance.adminId,
  'authId': instance.authId,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'preferredLanguage': instance.preferredLanguage,
  'role': instance.role,
  'status': instance.status,
};
