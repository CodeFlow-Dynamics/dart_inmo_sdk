// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inquiry_status_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInquiryStatusResultDto _$UpdateInquiryStatusResultDtoFromJson(
  Map<String, dynamic> json,
) => UpdateInquiryStatusResultDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  status: json['status'] as String,
  closeReason: json['closeReason'] as String?,
  closedAt: json['closedAt'] as String?,
);

Map<String, dynamic> _$UpdateInquiryStatusResultDtoToJson(
  UpdateInquiryStatusResultDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'status': instance.status,
  'closeReason': instance.closeReason,
  'closedAt': instance.closedAt,
};
