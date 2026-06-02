// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_facets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFacetsDto _$SearchFacetsDtoFromJson(Map<String, dynamic> json) =>
    SearchFacetsDto(
      categoryName: (json['categoryName'] as List<dynamic>)
          .map((e) => FacetCountDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      typeName: (json['typeName'] as List<dynamic>)
          .map((e) => FacetCountDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      offerType: (json['offerType'] as List<dynamic>)
          .map((e) => FacetCountDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      administrativeDivisionName:
          (json['administrativeDivisionName'] as List<dynamic>)
              .map((e) => FacetCountDto.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$SearchFacetsDtoToJson(SearchFacetsDto instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'typeName': instance.typeName,
      'offerType': instance.offerType,
      'administrativeDivisionName': instance.administrativeDivisionName,
    };
