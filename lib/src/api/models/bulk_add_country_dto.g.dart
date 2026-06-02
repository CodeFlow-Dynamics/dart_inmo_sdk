// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_add_country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkAddCountryDto _$BulkAddCountryDtoFromJson(Map<String, dynamic> json) =>
    BulkAddCountryDto(
      countries: (json['countries'] as List<dynamic>)
          .map((e) => AddCountryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BulkAddCountryDtoToJson(BulkAddCountryDto instance) =>
    <String, dynamic>{'countries': instance.countries};
