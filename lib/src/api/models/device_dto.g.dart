// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceDto _$DeviceDtoFromJson(Map<String, dynamic> json) => DeviceDto(
  deviceId: json['deviceId'] as String,
  deviceName: json['deviceName'] as String,
  deviceFingerprint: json['deviceFingerprint'] as String,
  lastUsedAt: DateTime.parse(json['lastUsedAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$DeviceDtoToJson(DeviceDto instance) => <String, dynamic>{
  'deviceId': instance.deviceId,
  'deviceName': instance.deviceName,
  'deviceFingerprint': instance.deviceFingerprint,
  'lastUsedAt': instance.lastUsedAt.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
};
