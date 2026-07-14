// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'device_dto.g.dart';

@JsonSerializable()
class DeviceDto {
  const DeviceDto({
    required this.deviceId,
    required this.deviceName,
    required this.deviceFingerprintHash,
    required this.lastUsedAt,
    required this.createdAt,
  });
  
  factory DeviceDto.fromJson(Map<String, Object?> json) => _$DeviceDtoFromJson(json);
  
  final String deviceId;
  final String deviceName;
  final String deviceFingerprintHash;
  final DateTime lastUsedAt;
  final DateTime createdAt;

  Map<String, Object?> toJson() => _$DeviceDtoToJson(this);
}

// Flutter compute serialization functions for DeviceDto
FutureOr<DeviceDto> deserializeDeviceDto(Map<String, dynamic> json) =>
    DeviceDto.fromJson(json);

FutureOr<List<DeviceDto>> deserializeDeviceDtoList(List<Map<String, dynamic>> json) =>
    json.map((e) => DeviceDto.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeDeviceDto(DeviceDto? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeDeviceDtoList(List<DeviceDto>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
