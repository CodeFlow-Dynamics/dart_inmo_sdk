// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_summary_attribute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingSummaryAttributeDto _$ListingSummaryAttributeDtoFromJson(
  Map<String, dynamic> json,
) => ListingSummaryAttributeDto(
  id: json['id'] as String,
  numericValue: (json['numericValue'] as num?)?.toDouble(),
  boolValue: json['boolValue'] as bool?,
  textValue: json['textValue'] as String?,
);

Map<String, dynamic> _$ListingSummaryAttributeDtoToJson(
  ListingSummaryAttributeDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'numericValue': instance.numericValue,
  'boolValue': instance.boolValue,
  'textValue': instance.textValue,
};
