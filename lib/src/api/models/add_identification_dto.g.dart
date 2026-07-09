// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_identification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddIdentificationDto _$AddIdentificationDtoFromJson(
  Map<String, dynamic> json,
) => AddIdentificationDto(
  authId: json['authId'] as String,
  documentId: json['documentId'] as String,
  idNumber: json['idNumber'] as String,
  validationPattern: json['validationPattern'] as String,
  dateOfBirth: json['dateOfBirth'] as String,
  expiryDate: json['expiryDate'] as String,
  obverseMediaFileId: json['obverseMediaFileId'] as String,
  reverseMediaFileId: json['reverseMediaFileId'] as String?,
);

Map<String, dynamic> _$AddIdentificationDtoToJson(
  AddIdentificationDto instance,
) => <String, dynamic>{
  'authId': instance.authId,
  'documentId': instance.documentId,
  'idNumber': instance.idNumber,
  'validationPattern': instance.validationPattern,
  'dateOfBirth': instance.dateOfBirth,
  'expiryDate': instance.expiryDate,
  'obverseMediaFileId': instance.obverseMediaFileId,
  'reverseMediaFileId': instance.reverseMediaFileId,
};
