// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'create_offer_dto.g.dart';

@JsonSerializable()
class CreateOfferDto {
  const CreateOfferDto({
    required this.offerType,
    required this.price,
    required this.currencyId,
    required this.rentPeriod,
  });
  
  factory CreateOfferDto.fromJson(Map<String, Object?> json) => _$CreateOfferDtoFromJson(json);
  
  final String offerType;
  final double price;
  final String currencyId;
  final String? rentPeriod;

  Map<String, Object?> toJson() => _$CreateOfferDtoToJson(this);
}

// Flutter compute serialization functions for CreateOfferDto
FutureOr<CreateOfferDto> deserializeCreateOfferDto(Map<String, dynamic> json) =>
    CreateOfferDto.fromJson(json);

FutureOr<List<CreateOfferDto>> deserializeCreateOfferDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => CreateOfferDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeCreateOfferDto(CreateOfferDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeCreateOfferDtoList(List<CreateOfferDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
