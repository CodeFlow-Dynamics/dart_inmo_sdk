// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_client_with_google_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginClientWithGoogleDto _$LoginClientWithGoogleDtoFromJson(
  Map<String, dynamic> json,
) => LoginClientWithGoogleDto(
  idToken: json['idToken'] as String,
  deviceName: json['deviceName'] as String?,
);

Map<String, dynamic> _$LoginClientWithGoogleDtoToJson(
  LoginClientWithGoogleDto instance,
) => <String, dynamic>{
  'idToken': instance.idToken,
  'deviceName': instance.deviceName,
};
