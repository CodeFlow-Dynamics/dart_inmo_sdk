// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_inbox_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InquiryInboxDto _$InquiryInboxDtoFromJson(Map<String, dynamic> json) =>
    InquiryInboxDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      listingId: json['listingId'] as String,
      listingTitle: json['listingTitle'] as String,
      inquirerName: json['inquirerName'] as String,
      inquirerEmail: json['inquirerEmail'] as String,
      inquirerPhone: json['inquirerPhone'] as String?,
      preferredContactChannel: json['preferredContactChannel'] as String,
      messagePreview: json['messagePreview'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$InquiryInboxDtoToJson(InquiryInboxDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'listingId': instance.listingId,
      'listingTitle': instance.listingTitle,
      'inquirerName': instance.inquirerName,
      'inquirerEmail': instance.inquirerEmail,
      'inquirerPhone': instance.inquirerPhone,
      'preferredContactChannel': instance.preferredContactChannel,
      'messagePreview': instance.messagePreview,
      'status': instance.status,
    };
