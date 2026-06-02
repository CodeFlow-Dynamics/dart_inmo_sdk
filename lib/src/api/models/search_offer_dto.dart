// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'search_offer_dto.g.dart';

@JsonSerializable()
class SearchOfferDto {
  const SearchOfferDto({
    required this.type,
    required this.price,
    required this.currencyId,
    required this.status,
  });
  
  factory SearchOfferDto.fromJson(Map<String, Object?> json) => _$SearchOfferDtoFromJson(json);
  
  final String type;
  final double price;
  final String currencyId;
  final String status;

  Map<String, Object?> toJson() => _$SearchOfferDtoToJson(this);
}

// Flutter compute serialization functions for SearchOfferDto
FutureOr<SearchOfferDto> deserializeSearchOfferDto(Map<String, dynamic> json) =>
    SearchOfferDto.fromJson(json);

FutureOr<List<SearchOfferDto>> deserializeSearchOfferDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => SearchOfferDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeSearchOfferDto(SearchOfferDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeSearchOfferDtoList(List<SearchOfferDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
