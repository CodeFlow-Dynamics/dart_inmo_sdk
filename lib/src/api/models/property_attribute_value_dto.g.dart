// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_attribute_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyAttributeValueDto _$PropertyAttributeValueDtoFromJson(
  Map<String, dynamic> json,
) => PropertyAttributeValueDto(
  id: json['id'] as String,
  propertyAttributeId: json['propertyAttributeId'] as String,
  numericValue: (json['numericValue'] as num?)?.toDouble(),
  textValue: json['textValue'] as String?,
  boolValue: json['boolValue'] as bool?,
);

Map<String, dynamic> _$PropertyAttributeValueDtoToJson(
  PropertyAttributeValueDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'propertyAttributeId': instance.propertyAttributeId,
  'numericValue': instance.numericValue,
  'textValue': instance.textValue,
  'boolValue': instance.boolValue,
};
