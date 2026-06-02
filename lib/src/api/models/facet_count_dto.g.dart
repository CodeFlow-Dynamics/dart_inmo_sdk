// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetCountDto _$FacetCountDtoFromJson(Map<String, dynamic> json) =>
    FacetCountDto(
      value: json['value'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$FacetCountDtoToJson(FacetCountDto instance) =>
    <String, dynamic>{'value': instance.value, 'count': instance.count};
