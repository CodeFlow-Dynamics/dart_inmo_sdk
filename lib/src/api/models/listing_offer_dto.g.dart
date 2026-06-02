// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingOfferDto _$ListingOfferDtoFromJson(Map<String, dynamic> json) =>
    ListingOfferDto(
      id: json['id'] as String,
      offerType: json['offerType'] as String,
      price: (json['price'] as num).toDouble(),
      currencyId: json['currencyId'] as String,
      rentPeriod: json['rentPeriod'] as String?,
      status: json['status'] as String,
      publishedAt: json['publishedAt'] as String?,
      expiresAt: json['expiresAt'] as String?,
      closedAt: json['closedAt'] as String?,
      priceHistory: (json['priceHistory'] as List<dynamic>)
          .map((e) => PriceHistoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$ListingOfferDtoToJson(ListingOfferDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offerType': instance.offerType,
      'price': instance.price,
      'currencyId': instance.currencyId,
      'rentPeriod': instance.rentPeriod,
      'status': instance.status,
      'publishedAt': instance.publishedAt,
      'expiresAt': instance.expiresAt,
      'closedAt': instance.closedAt,
      'priceHistory': instance.priceHistory,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
