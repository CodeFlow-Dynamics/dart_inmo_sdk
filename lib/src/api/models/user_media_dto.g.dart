// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMediaDto _$UserMediaDtoFromJson(Map<String, dynamic> json) => UserMediaDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  link: json['link'] as String,
  userId: json['userId'] as String,
  mediaTypeId: json['mediaTypeId'] as String,
);

Map<String, dynamic> _$UserMediaDtoToJson(UserMediaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'link': instance.link,
      'userId': instance.userId,
      'mediaTypeId': instance.mediaTypeId,
    };
