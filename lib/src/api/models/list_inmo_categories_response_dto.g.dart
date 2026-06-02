// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_inmo_categories_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListInmoCategoriesResponseDto _$ListInmoCategoriesResponseDtoFromJson(
  Map<String, dynamic> json,
) => ListInmoCategoriesResponseDto(
  items: (json['items'] as List<dynamic>)
      .map((e) => InmoCategoryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListInmoCategoriesResponseDtoToJson(
  ListInmoCategoriesResponseDto instance,
) => <String, dynamic>{'items': instance.items};
