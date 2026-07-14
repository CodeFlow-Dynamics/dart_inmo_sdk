// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_property_amenities_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetPropertyAmenitiesDto _$SetPropertyAmenitiesDtoFromJson(
  Map<String, dynamic> json,
) => SetPropertyAmenitiesDto(
  amenityIds: (json['amenityIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SetPropertyAmenitiesDtoToJson(
  SetPropertyAmenitiesDto instance,
) => <String, dynamic>{'amenityIds': instance.amenityIds};
