// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_property_attribute_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetPropertyAttributeItemDto _$SetPropertyAttributeItemDtoFromJson(
  Map<String, dynamic> json,
) => SetPropertyAttributeItemDto(
  propertyAttributeId: json['propertyAttributeId'] as String,
  numericValue: (json['numericValue'] as num?)?.toDouble(),
  textValue: json['textValue'] as String?,
  boolValue: json['boolValue'] as bool?,
);

Map<String, dynamic> _$SetPropertyAttributeItemDtoToJson(
  SetPropertyAttributeItemDto instance,
) => <String, dynamic>{
  'propertyAttributeId': instance.propertyAttributeId,
  'numericValue': instance.numericValue,
  'textValue': instance.textValue,
  'boolValue': instance.boolValue,
};
