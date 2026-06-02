// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_listing_amenities_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetListingAmenitiesDto _$SetListingAmenitiesDtoFromJson(
  Map<String, dynamic> json,
) => SetListingAmenitiesDto(
  amenityIds: (json['amenityIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SetListingAmenitiesDtoToJson(
  SetListingAmenitiesDto instance,
) => <String, dynamic>{'amenityIds': instance.amenityIds};
