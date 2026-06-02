// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_listing_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddListingMediaDto _$AddListingMediaDtoFromJson(Map<String, dynamic> json) =>
    AddListingMediaDto(
      url: json['url'] as String,
      mediaType: json['mediaType'] as String,
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$AddListingMediaDtoToJson(AddListingMediaDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'mediaType': instance.mediaType,
      'caption': instance.caption,
    };
