// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_inquiry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitInquiryDto _$SubmitInquiryDtoFromJson(Map<String, dynamic> json) =>
    SubmitInquiryDto(
      inquirerName: json['inquirerName'] as String,
      inquirerEmail: json['inquirerEmail'] as String,
      message: json['message'] as String,
      listingId: json['listingId'] as String?,
      inquirerPhoneCountryCode: json['inquirerPhoneCountryCode'] as String?,
      inquirerPhone: json['inquirerPhone'] as String?,
      preferredContactChannel: json['preferredContactChannel'] as String?,
      honeypot: json['honeypot'] as String?,
    );

Map<String, dynamic> _$SubmitInquiryDtoToJson(SubmitInquiryDto instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'inquirerName': instance.inquirerName,
      'inquirerEmail': instance.inquirerEmail,
      'message': instance.message,
      'inquirerPhoneCountryCode': instance.inquirerPhoneCountryCode,
      'inquirerPhone': instance.inquirerPhone,
      'preferredContactChannel': instance.preferredContactChannel,
      'honeypot': instance.honeypot,
    };
