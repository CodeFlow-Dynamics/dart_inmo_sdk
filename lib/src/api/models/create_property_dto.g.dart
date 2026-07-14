// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_property_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePropertyDto _$CreatePropertyDtoFromJson(Map<String, dynamic> json) =>
    CreatePropertyDto(
      ownerId: json['ownerId'] as String,
      propertyCategory: json['propertyCategory'] as String,
      propertyType: json['propertyType'] as String,
    );

Map<String, dynamic> _$CreatePropertyDtoToJson(CreatePropertyDto instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'propertyCategory': instance.propertyCategory,
      'propertyType': instance.propertyType,
    };
