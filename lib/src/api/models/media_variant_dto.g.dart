// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_variant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaVariantDto _$MediaVariantDtoFromJson(Map<String, dynamic> json) =>
    MediaVariantDto(
      type: json['type'] as String,
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      fileSizeBytes: (json['fileSizeBytes'] as num).toInt(),
    );

Map<String, dynamic> _$MediaVariantDtoToJson(MediaVariantDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'fileSizeBytes': instance.fileSizeBytes,
    };
