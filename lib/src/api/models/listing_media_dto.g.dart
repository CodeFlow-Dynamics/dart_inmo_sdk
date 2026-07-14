// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingMediaDto _$ListingMediaDtoFromJson(Map<String, dynamic> json) =>
    ListingMediaDto(
      id: json['id'] as String,
      mediaFileId: json['mediaFileId'] as String,
      mediaType: json['mediaType'] as String,
      caption: json['caption'] as String?,
      sortOrder: (json['sortOrder'] as num).toInt(),
      displayRole: json['displayRole'] as String,
    );

Map<String, dynamic> _$ListingMediaDtoToJson(ListingMediaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediaFileId': instance.mediaFileId,
      'mediaType': instance.mediaType,
      'caption': instance.caption,
      'sortOrder': instance.sortOrder,
      'displayRole': instance.displayRole,
    };
