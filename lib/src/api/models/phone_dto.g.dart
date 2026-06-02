// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneDto _$PhoneDtoFromJson(Map<String, dynamic> json) => PhoneDto(
  id: json['id'] as String,
  countryCode: json['countryCode'] as String,
  number: json['number'] as String,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$PhoneDtoToJson(PhoneDto instance) => <String, dynamic>{
  'id': instance.id,
  'countryCode': instance.countryCode,
  'number': instance.number,
  'userId': instance.userId,
};
