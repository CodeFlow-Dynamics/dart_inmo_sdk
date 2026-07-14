// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_offer_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingOfferSummaryDto _$ListingOfferSummaryDtoFromJson(
  Map<String, dynamic> json,
) => ListingOfferSummaryDto(
  offerType: json['offerType'] as String,
  price: (json['price'] as num).toDouble(),
  currency: json['currency'] as String,
  rentPeriod: json['rentPeriod'] as String?,
  status: json['status'] as String,
);

Map<String, dynamic> _$ListingOfferSummaryDtoToJson(
  ListingOfferSummaryDto instance,
) => <String, dynamic>{
  'offerType': instance.offerType,
  'price': instance.price,
  'currency': instance.currency,
  'rentPeriod': instance.rentPeriod,
  'status': instance.status,
};
