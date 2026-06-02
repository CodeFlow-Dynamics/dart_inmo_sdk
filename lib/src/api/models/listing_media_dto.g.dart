// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingMediaDto _$ListingMediaDtoFromJson(Map<String, dynamic> json) =>
    ListingMediaDto(
      id: json['id'] as String,
      url: json['url'] as String,
      mediaType: json['mediaType'] as String,
      caption: json['caption'] as String?,
      sortOrder: (json['sortOrder'] as num).toInt(),
      isPrimary: json['isPrimary'] as bool,
    );

Map<String, dynamic> _$ListingMediaDtoToJson(ListingMediaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'mediaType': instance.mediaType,
      'caption': instance.caption,
      'sortOrder': instance.sortOrder,
      'isPrimary': instance.isPrimary,
    };
