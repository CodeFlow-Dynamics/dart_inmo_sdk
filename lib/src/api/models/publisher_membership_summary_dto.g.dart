// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_membership_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublisherMembershipSummaryDto _$PublisherMembershipSummaryDtoFromJson(
  Map<String, dynamic> json,
) => PublisherMembershipSummaryDto(
  publisherId: json['publisherId'] as String,
  role: json['role'] as String,
);

Map<String, dynamic> _$PublisherMembershipSummaryDtoToJson(
  PublisherMembershipSummaryDto instance,
) => <String, dynamic>{
  'publisherId': instance.publisherId,
  'role': instance.role,
};
