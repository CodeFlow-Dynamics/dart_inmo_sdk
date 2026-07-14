// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_offer_dto.g.dart';

@JsonSerializable()
class UpdateOfferDto {
  const UpdateOfferDto({
    required this.currency,
    this.price,
    this.rentPeriod,
    this.expiresAt,
  });
  
  factory UpdateOfferDto.fromJson(Map<String, Object?> json) => _$UpdateOfferDtoFromJson(json);
  
  final double? price;
  final String currency;
  final String? rentPeriod;
  final DateTime? expiresAt;

  Map<String, Object?> toJson() => _$UpdateOfferDtoToJson(this);
}

// Flutter compute serialization functions for UpdateOfferDto
FutureOr<UpdateOfferDto> deserializeUpdateOfferDto(Map<String, dynamic> json) =>
    UpdateOfferDto.fromJson(json);

FutureOr<List<UpdateOfferDto>> deserializeUpdateOfferDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateOfferDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateOfferDto(UpdateOfferDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateOfferDtoList(List<UpdateOfferDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
