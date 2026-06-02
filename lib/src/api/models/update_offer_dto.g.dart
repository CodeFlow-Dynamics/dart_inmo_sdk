// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOfferDto _$UpdateOfferDtoFromJson(Map<String, dynamic> json) =>
    UpdateOfferDto(
      price: (json['price'] as num).toDouble(),
      currencyId: json['currencyId'] as String,
      rentPeriod: json['rentPeriod'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$UpdateOfferDtoToJson(UpdateOfferDto instance) =>
    <String, dynamic>{
      'price': instance.price,
      'currencyId': instance.currencyId,
      'rentPeriod': instance.rentPeriod,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
