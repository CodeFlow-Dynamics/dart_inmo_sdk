// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_attributes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchAttributesDto _$SearchAttributesDtoFromJson(Map<String, dynamic> json) =>
    SearchAttributesDto(
      bedrooms: (json['bedrooms'] as num?)?.toInt(),
      bathrooms: (json['bathrooms'] as num?)?.toInt(),
      halfBathrooms: (json['halfBathrooms'] as num?)?.toInt(),
      parkingSpaces: (json['parkingSpaces'] as num?)?.toInt(),
      totalArea: (json['totalArea'] as num?)?.toDouble(),
      builtArea: (json['builtArea'] as num?)?.toDouble(),
      lotArea: (json['lotArea'] as num?)?.toDouble(),
      yearBuilt: (json['yearBuilt'] as num?)?.toInt(),
      isFurnished: json['isFurnished'] as bool?,
      hasRoadAccess: json['hasRoadAccess'] as bool?,
      hasUtilities: json['hasUtilities'] as bool?,
    );

Map<String, dynamic> _$SearchAttributesDtoToJson(
  SearchAttributesDto instance,
) => <String, dynamic>{
  'bedrooms': instance.bedrooms,
  'bathrooms': instance.bathrooms,
  'halfBathrooms': instance.halfBathrooms,
  'parkingSpaces': instance.parkingSpaces,
  'totalArea': instance.totalArea,
  'builtArea': instance.builtArea,
  'lotArea': instance.lotArea,
  'yearBuilt': instance.yearBuilt,
  'isFurnished': instance.isFurnished,
  'hasRoadAccess': instance.hasRoadAccess,
  'hasUtilities': instance.hasUtilities,
};
