// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InquiryDetailDto _$InquiryDetailDtoFromJson(Map<String, dynamic> json) =>
    InquiryDetailDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      listingId: json['listingId'] as String,
      listingTitle: json['listingTitle'] as String,
      authId: json['authId'] as String?,
      inquirerName: json['inquirerName'] as String,
      inquirerEmail: json['inquirerEmail'] as String,
      inquirerPhone: json['inquirerPhone'] as String?,
      preferredContactChannel: json['preferredContactChannel'] as String,
      message: json['message'] as String,
      status: json['status'] as String,
      closeReason: json['closeReason'] as String?,
      closedAt: json['closedAt'] as String?,
    );

Map<String, dynamic> _$InquiryDetailDtoToJson(InquiryDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'listingId': instance.listingId,
      'listingTitle': instance.listingTitle,
      'authId': instance.authId,
      'inquirerName': instance.inquirerName,
      'inquirerEmail': instance.inquirerEmail,
      'inquirerPhone': instance.inquirerPhone,
      'preferredContactChannel': instance.preferredContactChannel,
      'message': instance.message,
      'status': instance.status,
      'closeReason': instance.closeReason,
      'closedAt': instance.closedAt,
    };
