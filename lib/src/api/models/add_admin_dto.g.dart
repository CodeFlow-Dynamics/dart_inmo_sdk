// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_admin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAdminDto _$AddAdminDtoFromJson(Map<String, dynamic> json) => AddAdminDto(
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  preferredLanguage: json['preferredLanguage'] as String?,
  initialSubroles: (json['initialSubroles'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AddAdminDtoToJson(AddAdminDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'preferredLanguage': instance.preferredLanguage,
      'initialSubroles': instance.initialSubroles,
    };
