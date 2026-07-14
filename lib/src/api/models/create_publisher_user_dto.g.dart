// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_publisher_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePublisherUserDto _$CreatePublisherUserDtoFromJson(
  Map<String, dynamic> json,
) => CreatePublisherUserDto(
  type: json['type'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$CreatePublisherUserDtoToJson(
  CreatePublisherUserDto instance,
) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'description': instance.description,
};
