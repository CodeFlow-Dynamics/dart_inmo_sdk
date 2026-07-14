// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrative_division_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdministrativeDivisionDto _$AdministrativeDivisionDtoFromJson(
  Map<String, dynamic> json,
) => AdministrativeDivisionDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  country: json['country'] as String,
  parentId: json['parentId'] as String?,
  levelId: json['levelId'] as String?,
  name: json['name'] as String,
  code: json['code'] as String?,
  postalCode: json['postalCode'] as String?,
);

Map<String, dynamic> _$AdministrativeDivisionDtoToJson(
  AdministrativeDivisionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'country': instance.country,
  'parentId': instance.parentId,
  'levelId': instance.levelId,
  'name': instance.name,
  'code': instance.code,
  'postalCode': instance.postalCode,
};
