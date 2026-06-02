// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddDocumentDto _$AddDocumentDtoFromJson(Map<String, dynamic> json) =>
    AddDocumentDto(
      documentTypeId: json['documentTypeId'] as String,
      countryId: json['countryId'] as String,
      validationPattern: json['validationPattern'] as String,
    );

Map<String, dynamic> _$AddDocumentDtoToJson(AddDocumentDto instance) =>
    <String, dynamic>{
      'documentTypeId': instance.documentTypeId,
      'countryId': instance.countryId,
      'validationPattern': instance.validationPattern,
    };
