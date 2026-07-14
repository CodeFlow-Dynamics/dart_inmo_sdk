// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublisherUserDto _$PublisherUserDtoFromJson(Map<String, dynamic> json) =>
    PublisherUserDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      status: json['status'] as String,
    );

Map<String, dynamic> _$PublisherUserDtoToJson(PublisherUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
    };
