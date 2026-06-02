// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_publisher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePublisherDto _$UpdatePublisherDtoFromJson(Map<String, dynamic> json) =>
    UpdatePublisherDto(
      publisherTypeId: json['publisherTypeId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$UpdatePublisherDtoToJson(UpdatePublisherDto instance) =>
    <String, dynamic>{
      'publisherTypeId': instance.publisherTypeId,
      'name': instance.name,
      'description': instance.description,
    };
