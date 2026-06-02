// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inmo_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InmoCategoryDto _$InmoCategoryDtoFromJson(Map<String, dynamic> json) =>
    InmoCategoryDto(
      id: json['id'] as String,
      name: json['name'] as String,
      i18nCode: json['i18nCode'] as String,
    );

Map<String, dynamic> _$InmoCategoryDtoToJson(InmoCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'i18nCode': instance.i18nCode,
    };
