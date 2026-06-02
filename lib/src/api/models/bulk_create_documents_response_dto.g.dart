// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_documents_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkCreateDocumentsResponseDto _$BulkCreateDocumentsResponseDtoFromJson(
  Map<String, dynamic> json,
) => BulkCreateDocumentsResponseDto(
  documents: (json['documents'] as List<dynamic>)
      .map((e) => DocumentDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BulkCreateDocumentsResponseDtoToJson(
  BulkCreateDocumentsResponseDto instance,
) => <String, dynamic>{'documents': instance.documents};
