// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_administrative_divisions_by_name_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchAdministrativeDivisionsByNameResultDto
_$SearchAdministrativeDivisionsByNameResultDtoFromJson(
  Map<String, dynamic> json,
) => SearchAdministrativeDivisionsByNameResultDto(
  matches: (json['matches'] as List<dynamic>)
      .map(
        (e) => AdministrativeDivisionSearchMatchDto.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$SearchAdministrativeDivisionsByNameResultDtoToJson(
  SearchAdministrativeDivisionsByNameResultDto instance,
) => <String, dynamic>{'matches': instance.matches};
