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
  userId: json['userId'] as String,
  documentId: json['documentId'] as String,
  idNumber: json['idNumber'] as String,
  dateOfBirth: json['dateOfBirth'] as String,
  expiryDate: json['expiryDate'] as String,
  photoObverseLink: json['photoObverseLink'] as String?,
  photoReverseLink: json['photoReverseLink'] as String?,
  status: json['status'] as String,
  userNotes: json['userNotes'] as String,
  reviewerNotes: json['reviewerNotes'] as String,
  reviewerId: json['reviewerId'] as String?,
  reviewedAt: json['reviewedAt'] as String?,
  identificationId: json['identificationId'] as String?,
);

Map<String, dynamic> _$VerificationSubmissionDtoToJson(
  VerificationSubmissionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'userId': instance.userId,
  'documentId': instance.documentId,
  'idNumber': instance.idNumber,
  'dateOfBirth': instance.dateOfBirth,
  'expiryDate': instance.expiryDate,
  'photoObverseLink': instance.photoObverseLink,
  'photoReverseLink': instance.photoReverseLink,
  'status': instance.status,
  'userNotes': instance.userNotes,
  'reviewerNotes': instance.reviewerNotes,
  'reviewerId': instance.reviewerId,
  'reviewedAt': instance.reviewedAt,
  'identificationId': instance.identificationId,
};
