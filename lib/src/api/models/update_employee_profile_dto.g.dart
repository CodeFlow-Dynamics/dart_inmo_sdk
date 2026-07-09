// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_employee_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEmployeeProfileDto _$UpdateEmployeeProfileDtoFromJson(
  Map<String, dynamic> json,
) => UpdateEmployeeProfileDto(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  avatarMediaId: json['avatarMediaId'] as String?,
);

Map<String, dynamic> _$UpdateEmployeeProfileDtoToJson(
  UpdateEmployeeProfileDto instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'avatarMediaId': instance.avatarMediaId,
};
