// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'update_offer_status_dto.g.dart';

@JsonSerializable()
class UpdateOfferStatusDto {
  const UpdateOfferStatusDto({
    required this.status,
  });
  
  factory UpdateOfferStatusDto.fromJson(Map<String, Object?> json) => _$UpdateOfferStatusDtoFromJson(json);
  
  final String status;

  Map<String, Object?> toJson() => _$UpdateOfferStatusDtoToJson(this);
}

// Flutter compute serialization functions for UpdateOfferStatusDto
FutureOr<UpdateOfferStatusDto> deserializeUpdateOfferStatusDto(Map<String, dynamic> json) =>
    UpdateOfferStatusDto.fromJson(json);

FutureOr<List<UpdateOfferStatusDto>> deserializeUpdateOfferStatusDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => UpdateOfferStatusDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeUpdateOfferStatusDto(UpdateOfferStatusDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeUpdateOfferStatusDtoList(List<UpdateOfferStatusDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
