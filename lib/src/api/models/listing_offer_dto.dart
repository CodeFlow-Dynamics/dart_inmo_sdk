// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'price_history_dto.dart';

part 'listing_offer_dto.g.dart';

@JsonSerializable()
class ListingOfferDto {
  const ListingOfferDto({
    required this.id,
    required this.offerType,
    required this.price,
    required this.currency,
    required this.rentPeriod,
    required this.status,
    required this.publishedAt,
    required this.expiresAt,
    required this.closedAt,
    required this.priceHistory,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory ListingOfferDto.fromJson(Map<String, Object?> json) => _$ListingOfferDtoFromJson(json);
  
  final String id;
  final String offerType;
  final double price;
  final String currency;
  final String? rentPeriod;
  final String status;
  final String? publishedAt;
  final String? expiresAt;
  final String? closedAt;
  final List<PriceHistoryDto> priceHistory;
  final String createdAt;
  final String updatedAt;

  Map<String, Object?> toJson() => _$ListingOfferDtoToJson(this);
}

// Flutter compute serialization functions for ListingOfferDto
FutureOr<ListingOfferDto> deserializeListingOfferDto(Map<String, dynamic> json) =>
    ListingOfferDto.fromJson(json);

FutureOr<List<ListingOfferDto>> deserializeListingOfferDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListingOfferDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListingOfferDto(ListingOfferDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListingOfferDtoList(List<ListingOfferDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
