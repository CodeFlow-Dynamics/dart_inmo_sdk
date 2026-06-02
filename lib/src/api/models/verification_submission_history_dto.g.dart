// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_submission_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerificationSubmissionHistoryDto _$VerificationSubmissionHistoryDtoFromJson(
  Map<String, dynamic> json,
) => VerificationSubmissionHistoryDto(
  id: json['id'] as String,
  verificationSubmissionId: json['verificationSubmissionId'] as String,
  previousStatus: json['previousStatus'] as String,
  newStatus: json['newStatus'] as String,
  reviewerNotes: json['reviewerNotes'] as String,
  changedByUserId: json['changedByUserId'] as String,
  changedAt: json['changedAt'] as String,
);

Map<String, dynamic> _$VerificationSubmissionHistoryDtoToJson(
  VerificationSubmissionHistoryDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'verificationSubmissionId': instance.verificationSubmissionId,
  'previousStatus': instance.previousStatus,
  'newStatus': instance.newStatus,
  'reviewerNotes': instance.reviewerNotes,
  'changedByUserId': instance.changedByUserId,
  'changedAt': instance.changedAt,
};
