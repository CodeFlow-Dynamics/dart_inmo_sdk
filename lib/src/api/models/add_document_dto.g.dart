// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddDocumentDto _$AddDocumentDtoFromJson(Map<String, dynamic> json) =>
    AddDocumentDto(
      documentType: json['documentType'] as String,
      country: json['country'] as String,
      validationPattern: json['validationPattern'] as String,
    );

Map<String, dynamic> _$AddDocumentDtoToJson(AddDocumentDto instance) =>
    <String, dynamic>{
      'documentType': instance.documentType,
      'country': instance.country,
      'validationPattern': instance.validationPattern,
    };
