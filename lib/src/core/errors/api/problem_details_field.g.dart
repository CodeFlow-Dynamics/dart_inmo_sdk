// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_details_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProblemDetailsField _$ProblemDetailsFieldFromJson(Map<String, dynamic> json) =>
    ProblemDetailsField(
      fields: (json['fields'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: (json['status'] as num?)?.toInt(),
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsFieldToJson(
  ProblemDetailsField instance,
) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'status': instance.status,
  'detail': instance.detail,
  'instance': instance.instance,
  'fields': instance.fields,
};
