// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_identification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddIdentificationDto _$AddIdentificationDtoFromJson(
  Map<String, dynamic> json,
) => AddIdentificationDto(
  clientUserId: json['clientUserId'] as String,
  documentId: json['documentId'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
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
  'clientUserId': instance.clientUserId,
  'documentId': instance.documentId,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'idNumber': instance.idNumber,
  'validationPattern': instance.validationPattern,
  'dateOfBirth': instance.dateOfBirth,
  'expiryDate': instance.expiryDate,
  'obverseMediaFileId': instance.obverseMediaFileId,
  'reverseMediaFileId': instance.reverseMediaFileId,
};
