// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_inmo_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddInmoTypeDto _$AddInmoTypeDtoFromJson(Map<String, dynamic> json) =>
    AddInmoTypeDto(
      name: json['name'] as String,
      categoryId: json['categoryId'] as String,
      parentId: json['parentId'] as String?,
      i18nCode: json['i18nCode'] as String,
    );

Map<String, dynamic> _$AddInmoTypeDtoToJson(AddInmoTypeDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'categoryId': instance.categoryId,
      'parentId': instance.parentId,
      'i18nCode': instance.i18nCode,
    };
