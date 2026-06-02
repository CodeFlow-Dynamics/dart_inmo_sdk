// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_sent_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InquirySentDto _$InquirySentDtoFromJson(Map<String, dynamic> json) =>
    InquirySentDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      listingId: json['listingId'] as String,
      listingTitle: json['listingTitle'] as String,
      listingSlug: json['listingSlug'] as String,
      listingPrimaryMediaUrl: json['listingPrimaryMediaUrl'] as String?,
      status: json['status'] as String,
    );

Map<String, dynamic> _$InquirySentDtoToJson(InquirySentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'listingId': instance.listingId,
      'listingTitle': instance.listingTitle,
      'listingSlug': instance.listingSlug,
      'listingPrimaryMediaUrl': instance.listingPrimaryMediaUrl,
      'status': instance.status,
    };
