// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_listing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateListingDto _$CreateListingDtoFromJson(Map<String, dynamic> json) =>
    CreateListingDto(
      publisherId: json['publisherId'] as String,
      propertyId: json['propertyId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateListingDtoToJson(CreateListingDto instance) =>
    <String, dynamic>{
      'publisherId': instance.publisherId,
      'propertyId': instance.propertyId,
      'title': instance.title,
      'description': instance.description,
    };
