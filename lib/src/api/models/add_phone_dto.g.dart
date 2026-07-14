// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_phone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPhoneDto _$AddPhoneDtoFromJson(Map<String, dynamic> json) => AddPhoneDto(
  countryCode: json['countryCode'] as String,
  number: json['number'] as String,
  clientUserId: json['clientUserId'] as String,
);

Map<String, dynamic> _$AddPhoneDtoToJson(AddPhoneDto instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'number': instance.number,
      'clientUserId': instance.clientUserId,
    };
