// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_inquiry_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitInquiryResultDto _$SubmitInquiryResultDtoFromJson(
  Map<String, dynamic> json,
) => SubmitInquiryResultDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  listingId: json['listingId'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$SubmitInquiryResultDtoToJson(
  SubmitInquiryResultDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'listingId': instance.listingId,
  'status': instance.status,
};
