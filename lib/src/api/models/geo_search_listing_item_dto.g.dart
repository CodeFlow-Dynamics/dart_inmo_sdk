// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_search_listing_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoSearchListingItemDto _$GeoSearchListingItemDtoFromJson(
  Map<String, dynamic> json,
) => GeoSearchListingItemDto(
  id: json['id'] as String,
  title: json['title'] as String,
  slug: json['slug'] as String,
  highlights: Map<String, String>.from(json['highlights'] as Map),
  relevanceScore: (json['relevanceScore'] as num).toDouble(),
  isFeatured: json['isFeatured'] as bool,
  offers: (json['offers'] as List<dynamic>)
      .map((e) => SearchOfferDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  attributes: SearchAttributesDto.fromJson(
    json['attributes'] as Map<String, dynamic>,
  ),
  categoryName: json['categoryName'] as String,
  typeName: json['typeName'] as String,
  administrativeDivisionName: json['administrativeDivisionName'] as String,
  primaryMediaUrl: json['primaryMediaUrl'] as String?,
  publisherName: json['publisherName'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  distanceKm: (json['distanceKm'] as num?)?.toDouble(),
);

Map<String, dynamic> _$GeoSearchListingItemDtoToJson(
  GeoSearchListingItemDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'slug': instance.slug,
  'highlights': instance.highlights,
  'relevanceScore': instance.relevanceScore,
  'isFeatured': instance.isFeatured,
  'offers': instance.offers,
  'attributes': instance.attributes,
  'categoryName': instance.categoryName,
  'typeName': instance.typeName,
  'administrativeDivisionName': instance.administrativeDivisionName,
  'primaryMediaUrl': instance.primaryMediaUrl,
  'publisherName': instance.publisherName,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'distanceKm': instance.distanceKm,
};
