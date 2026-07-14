// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_search_filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouriteSearchFilters _$FavouriteSearchFiltersFromJson(
  Map<String, dynamic> json,
) => FavouriteSearchFilters(
  offerType: json['offerType'] as String?,
  minPrice: (json['minPrice'] as num?)?.toDouble(),
  maxPrice: (json['maxPrice'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  propertyCategory: json['propertyCategory'] as String?,
  propertyType: json['propertyType'] as String?,
  administrativeDivisionId: json['administrativeDivisionId'] as String?,
  minBedrooms: (json['minBedrooms'] as num?)?.toInt(),
  maxBedrooms: (json['maxBedrooms'] as num?)?.toInt(),
  minBathrooms: (json['minBathrooms'] as num?)?.toInt(),
  maxBathrooms: (json['maxBathrooms'] as num?)?.toInt(),
  minTotalArea: (json['minTotalArea'] as num?)?.toDouble(),
  maxTotalArea: (json['maxTotalArea'] as num?)?.toDouble(),
  minBuiltArea: (json['minBuiltArea'] as num?)?.toDouble(),
  maxBuiltArea: (json['maxBuiltArea'] as num?)?.toDouble(),
  minLotArea: (json['minLotArea'] as num?)?.toDouble(),
  maxLotArea: (json['maxLotArea'] as num?)?.toDouble(),
  minParkingSpaces: (json['minParkingSpaces'] as num?)?.toInt(),
  isFurnished: json['isFurnished'] as bool?,
  hasRoadAccess: json['hasRoadAccess'] as bool?,
  hasUtilities: json['hasUtilities'] as bool?,
  amenityIds: (json['amenityIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  promotionTier: json['promotionTier'] as String?,
);

Map<String, dynamic> _$FavouriteSearchFiltersToJson(
  FavouriteSearchFilters instance,
) => <String, dynamic>{
  'offerType': instance.offerType,
  'minPrice': instance.minPrice,
  'maxPrice': instance.maxPrice,
  'currency': instance.currency,
  'propertyCategory': instance.propertyCategory,
  'propertyType': instance.propertyType,
  'administrativeDivisionId': instance.administrativeDivisionId,
  'minBedrooms': instance.minBedrooms,
  'maxBedrooms': instance.maxBedrooms,
  'minBathrooms': instance.minBathrooms,
  'maxBathrooms': instance.maxBathrooms,
  'minTotalArea': instance.minTotalArea,
  'maxTotalArea': instance.maxTotalArea,
  'minBuiltArea': instance.minBuiltArea,
  'maxBuiltArea': instance.maxBuiltArea,
  'minLotArea': instance.minLotArea,
  'maxLotArea': instance.maxLotArea,
  'minParkingSpaces': instance.minParkingSpaces,
  'isFurnished': instance.isFurnished,
  'hasRoadAccess': instance.hasRoadAccess,
  'hasUtilities': instance.hasUtilities,
  'amenityIds': instance.amenityIds,
  'promotionTier': instance.promotionTier,
};
