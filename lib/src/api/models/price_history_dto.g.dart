// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceHistoryDto _$PriceHistoryDtoFromJson(Map<String, dynamic> json) =>
    PriceHistoryDto(
      id: json['id'] as String,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$PriceHistoryDtoToJson(PriceHistoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'currency': instance.currency,
      'createdAt': instance.createdAt,
    };
