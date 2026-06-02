// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'listing_offer_summary_dto.dart';
import 'listing_summary_attribute_dto.dart';

part 'listing_summary_dto.g.dart';

@JsonSerializable()
class ListingSummaryDto {
  const ListingSummaryDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.slug,
    required this.status,
    required this.offers,
    required this.attributes,
    required this.administrativeDivisionName,
    required this.categoryName,
    required this.typeName,
    required this.primaryMediaUrl,
    required this.publisherName,
  });
  
  factory ListingSummaryDto.fromJson(Map<String, Object?> json) => _$ListingSummaryDtoFromJson(json);
  
  final String id;
  final String createdAt;
  final String updatedAt;
  final String title;
  final String slug;
  final String status;
  final List<ListingOfferSummaryDto> offers;
  final List<ListingSummaryAttributeDto> attributes;
  final String administrativeDivisionName;
  final String categoryName;
  final String typeName;
  final String? primaryMediaUrl;
  final String publisherName;

  Map<String, Object?> toJson() => _$ListingSummaryDtoToJson(this);
}

// Flutter compute serialization functions for ListingSummaryDto
FutureOr<ListingSummaryDto> deserializeListingSummaryDto(Map<String, dynamic> json) =>
    ListingSummaryDto.fromJson(json);

FutureOr<List<ListingSummaryDto>> deserializeListingSummaryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingSummaryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingSummaryDto(ListingSummaryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingSummaryDtoList(List<ListingSummaryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
