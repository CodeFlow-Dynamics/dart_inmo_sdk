// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_attribute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingAttributeDto _$ListingAttributeDtoFromJson(Map<String, dynamic> json) =>
    ListingAttributeDto(
      id: json['id'] as String,
      numericValue: (json['numericValue'] as num?)?.toDouble(),
      textValue: json['textValue'] as String?,
      boolValue: json['boolValue'] as bool?,
    );

Map<String, dynamic> _$ListingAttributeDtoToJson(
  ListingAttributeDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'numericValue': instance.numericValue,
  'textValue': instance.textValue,
  'boolValue': instance.boolValue,
};
