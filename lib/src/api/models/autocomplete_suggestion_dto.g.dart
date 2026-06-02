// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_suggestion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteSuggestionDto _$AutocompleteSuggestionDtoFromJson(
  Map<String, dynamic> json,
) => AutocompleteSuggestionDto(
  title: json['title'] as String,
  slug: json['slug'] as String,
  categoryName: json['categoryName'] as String,
);

Map<String, dynamic> _$AutocompleteSuggestionDtoToJson(
  AutocompleteSuggestionDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'slug': instance.slug,
  'categoryName': instance.categoryName,
};
