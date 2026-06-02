// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_countries_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCountriesResponseDto _$ListCountriesResponseDtoFromJson(
  Map<String, dynamic> json,
) => ListCountriesResponseDto(
  countries: (json['countries'] as List<dynamic>)
      .map((e) => CountryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListCountriesResponseDtoToJson(
  ListCountriesResponseDto instance,
) => <String, dynamic>{'countries': instance.countries};
