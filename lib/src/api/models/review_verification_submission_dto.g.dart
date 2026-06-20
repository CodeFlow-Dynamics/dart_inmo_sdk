// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_verification_submission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewVerificationSubmissionDto _$ReviewVerificationSubmissionDtoFromJson(
  Map<String, dynamic> json,
) => ReviewVerificationSubmissionDto(
  reviewerNotes: json['reviewerNotes'] as String,
  reviewerId: json['reviewerId'] as String,
  statusCode: (json['statusCode'] as num?)?.toInt(),
);

Map<String, dynamic> _$ReviewVerificationSubmissionDtoToJson(
  ReviewVerificationSubmissionDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'reviewerNotes': instance.reviewerNotes,
  'reviewerId': instance.reviewerId,
};
