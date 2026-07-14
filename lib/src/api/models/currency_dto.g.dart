// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyDto _$CurrencyDtoFromJson(Map<String, dynamic> json) => CurrencyDto(
  code: json['code'] as String,
  symbol: json['symbol'] as String,
  decimalPlaces: (json['decimalPlaces'] as num).toInt(),
  i18nCode: json['i18nCode'] as String,
);

Map<String, dynamic> _$CurrencyDtoToJson(CurrencyDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'decimalPlaces': instance.decimalPlaces,
      'i18nCode': instance.i18nCode,
    };
