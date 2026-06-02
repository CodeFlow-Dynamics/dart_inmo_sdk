// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_security_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthSecurityDto _$AuthSecurityDtoFromJson(Map<String, dynamic> json) =>
    AuthSecurityDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      userId: json['userId'] as String,
      emailVerified: json['emailVerified'] as bool,
      passwordChangeRequired: json['passwordChangeRequired'] as bool,
    );

Map<String, dynamic> _$AuthSecurityDtoToJson(AuthSecurityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
      'emailVerified': instance.emailVerified,
      'passwordChangeRequired': instance.passwordChangeRequired,
    };
