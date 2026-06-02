// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_with_email_and_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserWithEmailAndPasswordDto _$LoginUserWithEmailAndPasswordDtoFromJson(
  Map<String, dynamic> json,
) => LoginUserWithEmailAndPasswordDto(
  email: json['email'] as String,
  password: json['password'] as String,
  deviceName: json['deviceName'] as String?,
);

Map<String, dynamic> _$LoginUserWithEmailAndPasswordDtoToJson(
  LoginUserWithEmailAndPasswordDto instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'deviceName': instance.deviceName,
};
