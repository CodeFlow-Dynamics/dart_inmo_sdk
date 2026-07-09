// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_submission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerificationSubmissionDto _$VerificationSubmissionDtoFromJson(
  Map<String, dynamic> json,
) => VerificationSubmissionDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  authId: json['authId'] as String,
  identificationId: json['identificationId'] as String,
  status: json['status'] as String,
  userNotes: json['userNotes'] as String,
  reviewerNotes: json['reviewerNotes'] as String,
  reviewerId: json['reviewerId'] as String?,
  reviewedAt: json['reviewedAt'] as String?,
);

Map<String, dynamic> _$VerificationSubmissionDtoToJson(
  VerificationSubmissionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'authId': instance.authId,
  'identificationId': instance.identificationId,
  'status': instance.status,
  'userNotes': instance.userNotes,
  'reviewerNotes': instance.reviewerNotes,
  'reviewerId': instance.reviewerId,
  'reviewedAt': instance.reviewedAt,
};
