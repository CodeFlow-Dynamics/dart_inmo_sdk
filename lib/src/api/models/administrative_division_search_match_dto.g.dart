// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrative_division_search_match_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdministrativeDivisionSearchMatchDto
_$AdministrativeDivisionSearchMatchDtoFromJson(Map<String, dynamic> json) =>
    AdministrativeDivisionSearchMatchDto(
      id: json['id'] as String,
      name: json['name'] as String,
      parentId: json['parentId'] as String?,
      isoCode: json['isoCode'] as String,
      levelName: json['levelName'] as String?,
      fullPath: json['fullPath'] as String,
    );

Map<String, dynamic> _$AdministrativeDivisionSearchMatchDtoToJson(
  AdministrativeDivisionSearchMatchDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'parentId': instance.parentId,
  'isoCode': instance.isoCode,
  'levelName': instance.levelName,
  'fullPath': instance.fullPath,
};
