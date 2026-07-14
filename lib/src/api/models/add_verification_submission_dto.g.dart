// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_verification_submission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddVerificationSubmissionDto _$AddVerificationSubmissionDtoFromJson(
  Map<String, dynamic> json,
) => AddVerificationSubmissionDto(
  clientUserId: json['clientUserId'] as String,
  identificationId: json['identificationId'] as String,
  userNotes: json['userNotes'] as String?,
);

Map<String, dynamic> _$AddVerificationSubmissionDtoToJson(
  AddVerificationSubmissionDto instance,
) => <String, dynamic>{
  'clientUserId': instance.clientUserId,
  'identificationId': instance.identificationId,
  'userNotes': instance.userNotes,
};
