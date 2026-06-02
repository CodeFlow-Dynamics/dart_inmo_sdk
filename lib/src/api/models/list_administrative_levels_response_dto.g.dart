// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_administrative_levels_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListAdministrativeLevelsResponseDto
_$ListAdministrativeLevelsResponseDtoFromJson(Map<String, dynamic> json) =>
    ListAdministrativeLevelsResponseDto(
      levels: (json['levels'] as List<dynamic>)
          .map(
            (e) => AdministrativeLevelDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$ListAdministrativeLevelsResponseDtoToJson(
  ListAdministrativeLevelsResponseDto instance,
) => <String, dynamic>{'levels': instance.levels};
