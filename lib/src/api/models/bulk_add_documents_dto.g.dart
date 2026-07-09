// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_add_documents_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkAddDocumentsDto _$BulkAddDocumentsDtoFromJson(Map<String, dynamic> json) =>
    BulkAddDocumentsDto(
      documents: (json['documents'] as List<dynamic>)
          .map((e) => AddDocumentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BulkAddDocumentsDtoToJson(
  BulkAddDocumentsDto instance,
) => <String, dynamic>{'documents': instance.documents};
