// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inquiry_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInquiryStatusDto _$UpdateInquiryStatusDtoFromJson(
  Map<String, dynamic> json,
) => UpdateInquiryStatusDto(
  status: json['status'] as String,
  closeReason: json['closeReason'] as String?,
);

Map<String, dynamic> _$UpdateInquiryStatusDtoToJson(
  UpdateInquiryStatusDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'closeReason': instance.closeReason,
};
