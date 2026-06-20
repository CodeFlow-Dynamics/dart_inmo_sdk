// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_publisher_member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPublisherMemberDto _$AddPublisherMemberDtoFromJson(
  Map<String, dynamic> json,
) => AddPublisherMemberDto(
  role: json['role'] as String,
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$AddPublisherMemberDtoToJson(
  AddPublisherMemberDto instance,
) => <String, dynamic>{'userId': instance.userId, 'role': instance.role};
