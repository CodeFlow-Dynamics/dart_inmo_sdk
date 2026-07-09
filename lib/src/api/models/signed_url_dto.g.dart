// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_url_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignedUrlDto _$SignedUrlDtoFromJson(Map<String, dynamic> json) => SignedUrlDto(
  signedUrl: json['signedUrl'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$SignedUrlDtoToJson(SignedUrlDto instance) =>
    <String, dynamic>{
      'signedUrl': instance.signedUrl,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
