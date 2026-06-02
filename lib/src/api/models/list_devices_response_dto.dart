// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'device_dto.dart';

part 'list_devices_response_dto.g.dart';

@JsonSerializable()
class ListDevicesResponseDto {
  const ListDevicesResponseDto({
    required this.devices,
  });
  
  factory ListDevicesResponseDto.fromJson(Map<String, Object?> json) => _$ListDevicesResponseDtoFromJson(json);
  
  final List<DeviceDto> devices;

  Map<String, Object?> toJson() => _$ListDevicesResponseDtoToJson(this);
}

// Flutter compute serialization functions for ListDevicesResponseDto
FutureOr<ListDevicesResponseDto> deserializeListDevicesResponseDto(Map<String, dynamic> json) =>
    ListDevicesResponseDto.fromJson(json);

FutureOr<List<ListDevicesResponseDto>> deserializeListDevicesResponseDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => ListDevicesResponseDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeListDevicesResponseDto(ListDevicesResponseDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeListDevicesResponseDtoList(List<ListDevicesResponseDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
