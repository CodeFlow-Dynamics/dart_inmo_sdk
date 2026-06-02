// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrative_level_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdministrativeLevelDto _$AdministrativeLevelDtoFromJson(
  Map<String, dynamic> json,
) => AdministrativeLevelDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  countryId: json['countryId'] as String,
  name: json['name'] as String,
  code: json['code'] as String?,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
);

Map<String, dynamic> _$AdministrativeLevelDtoToJson(
  AdministrativeLevelDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'countryId': instance.countryId,
  'name': instance.name,
  'code': instance.code,
  'sortOrder': instance.sortOrder,
};
