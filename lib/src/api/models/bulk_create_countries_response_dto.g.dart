// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_countries_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkCreateCountriesResponseDto _$BulkCreateCountriesResponseDtoFromJson(
  Map<String, dynamic> json,
) => BulkCreateCountriesResponseDto(
  countries: (json['countries'] as List<dynamic>)
      .map((e) => CountryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BulkCreateCountriesResponseDtoToJson(
  BulkCreateCountriesResponseDto instance,
) => <String, dynamic>{'countries': instance.countries};
