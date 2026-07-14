// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyTypeDto _$PropertyTypeDtoFromJson(Map<String, dynamic> json) =>
    PropertyTypeDto(
      name: json['name'] as String,
      i18nCode: json['i18nCode'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$PropertyTypeDtoToJson(PropertyTypeDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'i18nCode': instance.i18nCode,
      'category': instance.category,
    };
