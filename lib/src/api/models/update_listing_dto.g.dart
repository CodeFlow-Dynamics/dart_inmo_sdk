// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_listing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateListingDto _$UpdateListingDtoFromJson(Map<String, dynamic> json) =>
    UpdateListingDto(
      inmoCategoryId: json['inmoCategoryId'] as String,
      inmoTypeId: json['inmoTypeId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateListingDtoToJson(UpdateListingDto instance) =>
    <String, dynamic>{
      'inmoCategoryId': instance.inmoCategoryId,
      'inmoTypeId': instance.inmoTypeId,
      'title': instance.title,
      'description': instance.description,
    };
