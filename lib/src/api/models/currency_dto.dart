// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'currency_dto.g.dart';

@JsonSerializable()
class CurrencyDto {
  const CurrencyDto({
    required this.code,
    required this.symbol,
    required this.decimalPlaces,
    required this.i18nCode,
  });
  
  factory CurrencyDto.fromJson(Map<String, Object?> json) => _$CurrencyDtoFromJson(json);
  
  final String code;
  final String symbol;
  final int decimalPlaces;
  final String i18nCode;

  Map<String, Object?> toJson() => _$CurrencyDtoToJson(this);
}

// Flutter compute serialization functions for CurrencyDto
FutureOr<CurrencyDto> deserializeCurrencyDto(Map<String, dynamic> json) =>
    CurrencyDto.fromJson(json);

FutureOr<List<CurrencyDto>> deserializeCurrencyDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => CurrencyDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeCurrencyDto(CurrencyDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeCurrencyDtoList(List<CurrencyDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
