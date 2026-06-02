// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmenityCategoryDto _$AmenityCategoryDtoFromJson(Map<String, dynamic> json) =>
    AmenityCategoryDto(
      categoryId: json['categoryId'] as String,
      category: json['category'] as String,
      i18nCode: json['i18nCode'] as String,
      amenities: (json['amenities'] as List<dynamic>)
          .map((e) => AmenityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AmenityCategoryDtoToJson(AmenityCategoryDto instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'category': instance.category,
      'i18nCode': instance.i18nCode,
      'amenities': instance.amenities,
    };
