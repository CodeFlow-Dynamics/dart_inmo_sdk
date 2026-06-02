// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProblemDetailsEntity _$ProblemDetailsEntityFromJson(
  Map<String, dynamic> json,
) => ProblemDetailsEntity(
  entity: json['entity'] as String,
  type: json['type'] as String?,
  title: json['title'] as String?,
  status: (json['status'] as num?)?.toInt(),
  detail: json['detail'] as String?,
  instance: json['instance'] as String?,
);

Map<String, dynamic> _$ProblemDetailsEntityToJson(
  ProblemDetailsEntity instance,
) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'status': instance.status,
  'detail': instance.detail,
  'instance': instance.instance,
  'entity': instance.entity,
};
