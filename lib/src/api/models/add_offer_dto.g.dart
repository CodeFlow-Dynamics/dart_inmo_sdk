// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOfferDto _$AddOfferDtoFromJson(Map<String, dynamic> json) => AddOfferDto(
  offerType: json['offerType'] as String,
  currency: json['currency'] as String,
  price: (json['price'] as num?)?.toDouble(),
  rentPeriod: json['rentPeriod'] as String?,
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$AddOfferDtoToJson(AddOfferDto instance) =>
    <String, dynamic>{
      'offerType': instance.offerType,
      'price': instance.price,
      'currency': instance.currency,
      'rentPeriod': instance.rentPeriod,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
