// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'add_offer_dto.g.dart';

@JsonSerializable()
class AddOfferDto {
  const AddOfferDto({
    required this.offerType,
    required this.price,
    required this.currencyId,
    required this.rentPeriod,
    required this.expiresAt,
  });
  
  factory AddOfferDto.fromJson(Map<String, Object?> json) => _$AddOfferDtoFromJson(json);
  
  final String offerType;
  final double price;
  final String currencyId;
  final String? rentPeriod;
  final DateTime? expiresAt;

  Map<String, Object?> toJson() => _$AddOfferDtoToJson(this);
}

// Flutter compute serialization functions for AddOfferDto
FutureOr<AddOfferDto> deserializeAddOfferDto(Map<String, dynamic> json) =>
    AddOfferDto.fromJson(json);

FutureOr<List<AddOfferDto>> deserializeAddOfferDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => AddOfferDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeAddOfferDto(AddOfferDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeAddOfferDtoList(List<AddOfferDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
