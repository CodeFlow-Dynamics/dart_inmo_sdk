// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_property_attributes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetPropertyAttributesDto _$SetPropertyAttributesDtoFromJson(
  Map<String, dynamic> json,
) => SetPropertyAttributesDto(
  attributes: (json['attributes'] as List<dynamic>)
      .map(
        (e) => SetPropertyAttributeItemDto.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$SetPropertyAttributesDtoToJson(
  SetPropertyAttributesDto instance,
) => <String, dynamic>{'attributes': instance.attributes};
