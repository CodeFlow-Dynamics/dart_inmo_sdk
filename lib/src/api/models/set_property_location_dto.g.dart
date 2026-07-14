// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_property_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetPropertyLocationDto _$SetPropertyLocationDtoFromJson(
  Map<String, dynamic> json,
) => SetPropertyLocationDto(
  administrativeDivisionId: json['administrativeDivisionId'] as String,
  street: json['street'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SetPropertyLocationDtoToJson(
  SetPropertyLocationDto instance,
) => <String, dynamic>{
  'administrativeDivisionId': instance.administrativeDivisionId,
  'street': instance.street,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
