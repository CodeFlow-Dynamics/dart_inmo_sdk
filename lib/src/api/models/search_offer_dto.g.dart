// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOfferDto _$SearchOfferDtoFromJson(Map<String, dynamic> json) =>
    SearchOfferDto(
      type: json['type'] as String,
      price: (json['price'] as num).toDouble(),
      currencyId: json['currencyId'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$SearchOfferDtoToJson(SearchOfferDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'price': instance.price,
      'currencyId': instance.currencyId,
      'status': instance.status,
    };
