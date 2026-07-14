// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'listing_offer_summary_dto.g.dart';

@JsonSerializable()
class ListingOfferSummaryDto {
  const ListingOfferSummaryDto({
    required this.offerType,
    required this.price,
    required this.currency,
    required this.rentPeriod,
    required this.status,
  });
  
  factory ListingOfferSummaryDto.fromJson(Map<String, Object?> json) => _$ListingOfferSummaryDtoFromJson(json);
  
  final String offerType;
  final double price;
  final String currency;
  final String? rentPeriod;
  final String status;

  Map<String, Object?> toJson() => _$ListingOfferSummaryDtoToJson(this);
}

// Flutter compute serialization functions for ListingOfferSummaryDto
FutureOr<ListingOfferSummaryDto> deserializeListingOfferSummaryDto(Map<String, dynamic> json) =>
    ListingOfferSummaryDto.fromJson(json);

FutureOr<List<ListingOfferSummaryDto>> deserializeListingOfferSummaryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingOfferSummaryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingOfferSummaryDto(ListingOfferSummaryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingOfferSummaryDtoList(List<ListingOfferSummaryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
