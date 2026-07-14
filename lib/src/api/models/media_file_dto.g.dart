// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaFileDto _$MediaFileDtoFromJson(Map<String, dynamic> json) => MediaFileDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  status: json['status'] as String,
  publicUrl: json['publicUrl'] as String?,
  ownerType: json['ownerType'] as String,
  mediaType: json['mediaType'] as String,
  uploadedAt: json['uploadedAt'] as String,
  variants: (json['variants'] as List<dynamic>)
      .map((e) => MediaVariantDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MediaFileDtoToJson(MediaFileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'status': instance.status,
      'publicUrl': instance.publicUrl,
      'ownerType': instance.ownerType,
      'mediaType': instance.mediaType,
      'uploadedAt': instance.uploadedAt,
      'variants': instance.variants,
    };
