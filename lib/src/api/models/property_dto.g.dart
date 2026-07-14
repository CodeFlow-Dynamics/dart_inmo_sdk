// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyDto _$PropertyDtoFromJson(Map<String, dynamic> json) => PropertyDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  ownerId: json['ownerId'] as String,
  propertyCategory: json['propertyCategory'] as String,
  propertyType: json['propertyType'] as String,
  administrativeDivisionId: json['administrativeDivisionId'] as String?,
  street: json['street'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  status: json['status'] as String,
  units: (json['units'] as List<dynamic>)
      .map((e) => PropertyUnitDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  attributes: (json['attributes'] as List<dynamic>)
      .map((e) => PropertyAttributeValueDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  amenities: (json['amenities'] as List<dynamic>)
      .map((e) => PropertyAmenityDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PropertyDtoToJson(PropertyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'ownerId': instance.ownerId,
      'propertyCategory': instance.propertyCategory,
      'propertyType': instance.propertyType,
      'administrativeDivisionId': instance.administrativeDivisionId,
      'street': instance.street,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
      'units': instance.units,
      'attributes': instance.attributes,
      'amenities': instance.amenities,
    };
