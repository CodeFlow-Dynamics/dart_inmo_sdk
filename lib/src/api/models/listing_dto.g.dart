// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingDto _$ListingDtoFromJson(Map<String, dynamic> json) => ListingDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  publisherId: json['publisherId'] as String,
  propertyId: json['propertyId'] as String,
  propertyCategory: json['propertyCategory'] as String,
  propertyType: json['propertyType'] as String,
  administrativeDivisionId: json['administrativeDivisionId'] as String?,
  title: json['title'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String?,
  status: json['status'] as String,
  street: json['street'] as String?,
  postalCode: json['postalCode'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  promotionTier: json['promotionTier'] as String,
  viewCount: (json['viewCount'] as num).toInt(),
  offers: (json['offers'] as List<dynamic>)
      .map((e) => ListingOfferDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  attributes: (json['attributes'] as List<dynamic>?)
      ?.map((e) => ListingAttributeDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  media: (json['media'] as List<dynamic>?)
      ?.map((e) => ListingMediaDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  amenities: (json['amenities'] as List<dynamic>?)
      ?.map((e) => ListingAmenityDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  publisher: ListingPublisherSummaryDto.fromJson(
    json['publisher'] as Map<String, dynamic>,
  ),
  categoryName: json['categoryName'] as String?,
  typeName: json['typeName'] as String?,
  administrativeDivisionName: json['administrativeDivisionName'] as String?,
);

Map<String, dynamic> _$ListingDtoToJson(ListingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publisherId': instance.publisherId,
      'propertyId': instance.propertyId,
      'propertyCategory': instance.propertyCategory,
      'propertyType': instance.propertyType,
      'administrativeDivisionId': instance.administrativeDivisionId,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'status': instance.status,
      'street': instance.street,
      'postalCode': instance.postalCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'promotionTier': instance.promotionTier,
      'viewCount': instance.viewCount,
      'offers': instance.offers,
      'attributes': instance.attributes,
      'media': instance.media,
      'amenities': instance.amenities,
      'publisher': instance.publisher,
      'categoryName': instance.categoryName,
      'typeName': instance.typeName,
      'administrativeDivisionName': instance.administrativeDivisionName,
    };
