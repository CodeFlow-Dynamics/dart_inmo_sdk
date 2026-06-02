// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'listing_publisher_summary_dto.g.dart';

@JsonSerializable()
class ListingPublisherSummaryDto {
  const ListingPublisherSummaryDto({
    required this.id,
    required this.name,
    required this.typeName,
  });
  
  factory ListingPublisherSummaryDto.fromJson(Map<String, Object?> json) => _$ListingPublisherSummaryDtoFromJson(json);
  
  final String id;
  final String name;
  final String typeName;

  Map<String, Object?> toJson() => _$ListingPublisherSummaryDtoToJson(this);
}

// Flutter compute serialization functions for ListingPublisherSummaryDto
FutureOr<ListingPublisherSummaryDto> deserializeListingPublisherSummaryDto(Map<String, dynamic> json) =>
    ListingPublisherSummaryDto.fromJson(json);

FutureOr<List<ListingPublisherSummaryDto>> deserializeListingPublisherSummaryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingPublisherSummaryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingPublisherSummaryDto(ListingPublisherSummaryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingPublisherSummaryDtoList(List<ListingPublisherSummaryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
