// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_admin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAdminDto _$UpdateAdminDtoFromJson(Map<String, dynamic> json) =>
    UpdateAdminDto(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      preferredLanguage: json['preferredLanguage'] as String?,
    );

Map<String, dynamic> _$UpdateAdminDtoToJson(UpdateAdminDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'preferredLanguage': instance.preferredLanguage,
    };
