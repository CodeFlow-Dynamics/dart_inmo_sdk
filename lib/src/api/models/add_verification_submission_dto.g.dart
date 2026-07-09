// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_verification_submission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddVerificationSubmissionDto _$AddVerificationSubmissionDtoFromJson(
  Map<String, dynamic> json,
) => AddVerificationSubmissionDto(
  authId: json['authId'] as String,
  identificationId: json['identificationId'] as String,
  userNotes: json['userNotes'] as String?,
);

Map<String, dynamic> _$AddVerificationSubmissionDtoToJson(
  AddVerificationSubmissionDto instance,
) => <String, dynamic>{
  'authId': instance.authId,
  'identificationId': instance.identificationId,
  'userNotes': instance.userNotes,
};
