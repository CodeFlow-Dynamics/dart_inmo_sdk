// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';
import '../retrofit_query_serializers.dart';

import '../models/add_document_dto.dart';
import '../models/bulk_add_documents_dto.dart';
import '../models/bulk_create_documents_response_dto.dart';
import '../models/document_dto.dart';
import '../models/document_dto_paginated_result.dart';
import '../models/update_document_dto.dart';

part 'identity_document_rule_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class IdentityDocumentRuleClient {
  factory IdentityDocumentRuleClient(Dio dio, {String? baseUrl}) = _IdentityDocumentRuleClient;

  @POST('/api/v1/identity/document-rules')
  Future<HttpResponse<DocumentDto>> postApiV1IdentityDocumentRules({
    @Body() AddDocumentDto? body,
  });

  @GET('/api/v1/identity/document-rules')
  Future<HttpResponse<DocumentDtoPaginatedResult>> getApiV1IdentityDocumentRules({
    @Query('Country') String? country,
    @Query('DocumentType') String? documentType,
    @Query('ValidationPattern') String? validationPattern,
    @Query('CreatedFrom') DateTime? createdFrom,
    @Query('CreatedTo') DateTime? createdTo,
    @Query('UpdatedFrom') DateTime? updatedFrom,
    @Query('UpdatedTo') DateTime? updatedTo,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @POST('/api/v1/identity/document-rules/bulk')
  Future<HttpResponse<BulkCreateDocumentsResponseDto>> postApiV1IdentityDocumentRulesBulk({
    @Body() BulkAddDocumentsDto? body,
  });

  @GET('/api/v1/identity/document-rules/{id}')
  Future<HttpResponse<DocumentDto>> getApiV1IdentityDocumentRulesId({
    @Path('id') required String id,
  });

  @PUT('/api/v1/identity/document-rules/{id}')
  Future<HttpResponse<DocumentDto>> putApiV1IdentityDocumentRulesId({
    @Path('id') required String id,
    @Body() UpdateDocumentDto? body,
  });

  @DELETE('/api/v1/identity/document-rules/{id}')
  Future<HttpResponse<void>> deleteApiV1IdentityDocumentRulesId({
    @Path('id') required String id,
  });
}
