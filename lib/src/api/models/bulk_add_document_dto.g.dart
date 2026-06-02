// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_add_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkAddDocumentDto _$BulkAddDocumentDtoFromJson(Map<String, dynamic> json) =>
    BulkAddDocumentDto(
      documentTypeId: json['documentTypeId'] as String,
      countryId: json['countryId'] as String,
      validationPattern: json['validationPattern'] as String,
    );

Map<String, dynamic> _$BulkAddDocumentDtoToJson(BulkAddDocumentDto instance) =>
    <String, dynamic>{
      'documentTypeId': instance.documentTypeId,
      'countryId': instance.countryId,
      'validationPattern': instance.validationPattern,
    };
