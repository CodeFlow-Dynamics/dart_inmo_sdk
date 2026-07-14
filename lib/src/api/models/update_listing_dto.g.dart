// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_listing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateListingDto _$UpdateListingDtoFromJson(Map<String, dynamic> json) =>
    UpdateListingDto(
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateListingDtoToJson(UpdateListingDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
