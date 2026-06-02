// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentDto _$DocumentDtoFromJson(Map<String, dynamic> json) => DocumentDto(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  documentTypeId: json['documentTypeId'] as String,
  countryId: json['countryId'] as String,
  validationPattern: json['validationPattern'] as String,
);

Map<String, dynamic> _$DocumentDtoToJson(DocumentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'documentTypeId': instance.documentTypeId,
      'countryId': instance.countryId,
      'validationPattern': instance.validationPattern,
    };
