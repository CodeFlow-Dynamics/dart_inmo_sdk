// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOfferDto _$CreateOfferDtoFromJson(Map<String, dynamic> json) =>
    CreateOfferDto(
      offerType: json['offerType'] as String,
      price: (json['price'] as num).toDouble(),
      currencyId: json['currencyId'] as String,
      rentPeriod: json['rentPeriod'] as String?,
    );

Map<String, dynamic> _$CreateOfferDtoToJson(CreateOfferDto instance) =>
    <String, dynamic>{
      'offerType': instance.offerType,
      'price': instance.price,
      'currencyId': instance.currencyId,
      'rentPeriod': instance.rentPeriod,
    };
