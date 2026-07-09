// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublisherMemberDto _$PublisherMemberDtoFromJson(Map<String, dynamic> json) =>
    PublisherMemberDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      publisherId: json['publisherId'] as String,
      clientUserId: json['clientUserId'] as String,
      role: json['role'] as String,
      joinedAt: json['joinedAt'] as String,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$PublisherMemberDtoToJson(PublisherMemberDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publisherId': instance.publisherId,
      'clientUserId': instance.clientUserId,
      'role': instance.role,
      'joinedAt': instance.joinedAt,
      'userName': instance.userName,
    };
