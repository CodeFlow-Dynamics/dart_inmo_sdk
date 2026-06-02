// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inmo_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InmoTypeDto _$InmoTypeDtoFromJson(Map<String, dynamic> json) => InmoTypeDto(
  id: json['id'] as String,
  name: json['name'] as String,
  categoryId: json['categoryId'] as String,
  parentId: json['parentId'] as String?,
  i18nCode: json['i18nCode'] as String,
);

Map<String, dynamic> _$InmoTypeDtoToJson(InmoTypeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'parentId': instance.parentId,
      'i18nCode': instance.i18nCode,
    };
