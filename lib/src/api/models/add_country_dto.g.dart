// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCountryDto _$AddCountryDtoFromJson(Map<String, dynamic> json) =>
    AddCountryDto(
      isoCode: json['isoCode'] as String,
      i18nCode: json['i18nCode'] as String,
    );

Map<String, dynamic> _$AddCountryDtoToJson(AddCountryDto instance) =>
    <String, dynamic>{
      'isoCode': instance.isoCode,
      'i18nCode': instance.i18nCode,
    };
