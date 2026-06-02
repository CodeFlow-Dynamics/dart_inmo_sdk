// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_phone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPhoneDto _$AddPhoneDtoFromJson(Map<String, dynamic> json) => AddPhoneDto(
  countryCode: json['countryCode'] as String,
  number: json['number'] as String,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$AddPhoneDtoToJson(AddPhoneDto instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'number': instance.number,
      'userId': instance.userId,
    };
