// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_listing_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetListingLocationDto _$SetListingLocationDtoFromJson(
  Map<String, dynamic> json,
) => SetListingLocationDto(
  administrativeDivisionId: json['administrativeDivisionId'] as String,
  street: json['street'] as String?,
  postalCode: json['postalCode'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SetListingLocationDtoToJson(
  SetListingLocationDto instance,
) => <String, dynamic>{
  'administrativeDivisionId': instance.administrativeDivisionId,
  'street': instance.street,
  'postalCode': instance.postalCode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
