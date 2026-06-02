// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_listing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouriteListingDto _$FavouriteListingDtoFromJson(Map<String, dynamic> json) =>
    FavouriteListingDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      ownerId: json['ownerId'] as String,
      listingId: json['listingId'] as String,
    );

Map<String, dynamic> _$FavouriteListingDtoToJson(
  FavouriteListingDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'ownerId': instance.ownerId,
  'listingId': instance.listingId,
};
