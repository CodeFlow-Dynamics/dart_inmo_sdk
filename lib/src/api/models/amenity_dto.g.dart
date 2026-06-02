// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmenityDto _$AmenityDtoFromJson(Map<String, dynamic> json) => AmenityDto(
  id: json['id'] as String,
  name: json['name'] as String,
  i18nCode: json['i18nCode'] as String,
);

Map<String, dynamic> _$AmenityDtoToJson(AmenityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'i18nCode': instance.i18nCode,
    };
