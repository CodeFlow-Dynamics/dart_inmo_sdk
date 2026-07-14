// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdentificationDto _$IdentificationDtoFromJson(Map<String, dynamic> json) =>
    IdentificationDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      clientUserId: json['clientUserId'] as String,
      documentId: json['documentId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      idNumber: json['idNumber'] as String,
      validationPattern: json['validationPattern'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      expiryDate: json['expiryDate'] as String,
      obverseMediaFileId: json['obverseMediaFileId'] as String?,
      reverseMediaFileId: json['reverseMediaFileId'] as String?,
      status: json['status'] as String,
    );

Map<String, dynamic> _$IdentificationDtoToJson(IdentificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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
      'status': instance.status,
    };
