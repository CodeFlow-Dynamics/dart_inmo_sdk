// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'price_history_dto.g.dart';

@JsonSerializable()
class PriceHistoryDto {
  const PriceHistoryDto({
    required this.id,
    required this.price,
    required this.currency,
    required this.createdAt,
  });
  
  factory PriceHistoryDto.fromJson(Map<String, Object?> json) => _$PriceHistoryDtoFromJson(json);
  
  final String id;
  final double price;
  final String currency;
  final String createdAt;

  Map<String, Object?> toJson() => _$PriceHistoryDtoToJson(this);
}

// Flutter compute serialization functions for PriceHistoryDto
FutureOr<PriceHistoryDto> deserializePriceHistoryDto(Map<String, dynamic> json) =>
    PriceHistoryDto.fromJson(json);

FutureOr<List<PriceHistoryDto>> deserializePriceHistoryDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => PriceHistoryDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializePriceHistoryDto(PriceHistoryDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializePriceHistoryDtoList(List<PriceHistoryDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
