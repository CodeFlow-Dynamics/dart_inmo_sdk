// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_devices_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDevicesResponseDto _$ListDevicesResponseDtoFromJson(
  Map<String, dynamic> json,
) => ListDevicesResponseDto(
  devices: (json['devices'] as List<dynamic>)
      .map((e) => DeviceDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListDevicesResponseDtoToJson(
  ListDevicesResponseDto instance,
) => <String, dynamic>{'devices': instance.devices};
