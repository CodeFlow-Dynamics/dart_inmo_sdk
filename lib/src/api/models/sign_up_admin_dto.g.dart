// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_admin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpAdminDto _$SignUpAdminDtoFromJson(Map<String, dynamic> json) =>
    SignUpAdminDto(
      email: json['email'] as String,
      password: json['password'] as String,
      repeatPassword: json['repeatPassword'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      countryCode: json['countryCode'] as String,
      phoneNumber: json['phoneNumber'] as String,
      preferredLanguage: json['preferredLanguage'] as String?,
    );

Map<String, dynamic> _$SignUpAdminDtoToJson(SignUpAdminDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'repeatPassword': instance.repeatPassword,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'countryCode': instance.countryCode,
      'phoneNumber': instance.phoneNumber,
      'preferredLanguage': instance.preferredLanguage,
    };
