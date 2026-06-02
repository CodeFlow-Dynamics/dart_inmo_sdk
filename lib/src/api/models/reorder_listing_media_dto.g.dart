// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reorder_listing_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReorderListingMediaDto _$ReorderListingMediaDtoFromJson(
  Map<String, dynamic> json,
) => ReorderListingMediaDto(
  mediaIds: (json['mediaIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ReorderListingMediaDtoToJson(
  ReorderListingMediaDto instance,
) => <String, dynamic>{'mediaIds': instance.mediaIds};
