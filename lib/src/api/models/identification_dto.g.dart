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
      userId: json['userId'] as String,
      documentId: json['documentId'] as String,
      idNumber: json['idNumber'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      expiryDate: json['expiryDate'] as String,
      photoObverseLink: json['photoObverseLink'] as String?,
      photoReverseLink: json['photoReverseLink'] as String?,
    );

Map<String, dynamic> _$IdentificationDtoToJson(IdentificationDto instance) =>
    <String, dynamic>{
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
    };
