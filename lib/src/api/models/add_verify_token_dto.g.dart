// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_verify_token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddVerifyTokenDto _$AddVerifyTokenDtoFromJson(Map<String, dynamic> json) =>
    AddVerifyTokenDto(
      email: json['email'] as String,
      verificationTokenCode: json['verificationTokenCode'] as String,
    );

Map<String, dynamic> _$AddVerifyTokenDtoToJson(AddVerifyTokenDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'verificationTokenCode': instance.verificationTokenCode,
    };
