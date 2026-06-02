// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOfferDto _$AddOfferDtoFromJson(Map<String, dynamic> json) => AddOfferDto(
  offerType: json['offerType'] as String,
  price: (json['price'] as num).toDouble(),
  currencyId: json['currencyId'] as String,
  rentPeriod: json['rentPeriod'] as String?,
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$AddOfferDtoToJson(AddOfferDto instance) =>
    <String, dynamic>{
      'offerType': instance.offerType,
      'price': instance.price,
      'currencyId': instance.currencyId,
      'rentPeriod': instance.rentPeriod,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
