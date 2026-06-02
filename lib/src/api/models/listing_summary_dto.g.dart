// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingSummaryDto _$ListingSummaryDtoFromJson(Map<String, dynamic> json) =>
    ListingSummaryDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      status: json['status'] as String,
      offers: (json['offers'] as List<dynamic>)
          .map(
            (e) => ListingOfferSummaryDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      attributes: (json['attributes'] as List<dynamic>)
          .map(
            (e) =>
                ListingSummaryAttributeDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      administrativeDivisionName: json['administrativeDivisionName'] as String,
      categoryName: json['categoryName'] as String,
      typeName: json['typeName'] as String,
      primaryMediaUrl: json['primaryMediaUrl'] as String?,
      publisherName: json['publisherName'] as String,
    );

Map<String, dynamic> _$ListingSummaryDtoToJson(ListingSummaryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'slug': instance.slug,
      'status': instance.status,
      'offers': instance.offers,
      'attributes': instance.attributes,
      'administrativeDivisionName': instance.administrativeDivisionName,
      'categoryName': instance.categoryName,
      'typeName': instance.typeName,
      'primaryMediaUrl': instance.primaryMediaUrl,
      'publisherName': instance.publisherName,
    };
