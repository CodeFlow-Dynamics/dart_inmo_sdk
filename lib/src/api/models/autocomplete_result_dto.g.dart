// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteResultDto _$AutocompleteResultDtoFromJson(
  Map<String, dynamic> json,
) => AutocompleteResultDto(
  suggestions: (json['suggestions'] as List<dynamic>)
      .map((e) => AutocompleteSuggestionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AutocompleteResultDtoToJson(
  AutocompleteResultDto instance,
) => <String, dynamic>{'suggestions': instance.suggestions};
