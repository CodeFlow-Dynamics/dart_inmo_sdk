// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_user_with_email_and_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpUserWithEmailAndPasswordDto _$SignUpUserWithEmailAndPasswordDtoFromJson(
  Map<String, dynamic> json,
) => SignUpUserWithEmailAndPasswordDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$SignUpUserWithEmailAndPasswordDtoToJson(
  SignUpUserWithEmailAndPasswordDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
};
