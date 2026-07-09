// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_with_email_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserWithEmailDto _$LoginUserWithEmailDtoFromJson(
  Map<String, dynamic> json,
) => LoginUserWithEmailDto(
  email: json['email'] as String,
  password: json['password'] as String,
  deviceName: json['deviceName'] as String?,
);

Map<String, dynamic> _$LoginUserWithEmailDtoToJson(
  LoginUserWithEmailDto instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'deviceName': instance.deviceName,
};
