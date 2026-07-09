// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_publisher_member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPublisherMemberDto _$AddPublisherMemberDtoFromJson(
  Map<String, dynamic> json,
) => AddPublisherMemberDto(
  role: json['role'] as String,
  clientUserId: json['clientUserId'] as String?,
);

Map<String, dynamic> _$AddPublisherMemberDtoToJson(
  AddPublisherMemberDto instance,
) => <String, dynamic>{
  'clientUserId': instance.clientUserId,
  'role': instance.role,
};
