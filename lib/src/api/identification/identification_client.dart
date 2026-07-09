// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_identification_dto.dart';
import '../models/identification_dto.dart';
import '../models/identification_dto_paginated_result.dart';
import '../models/update_identification_dto.dart';

part 'identification_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class IdentificationClient {
  factory IdentificationClient(Dio dio, {String? baseUrl}) = _IdentificationClient;

  @POST('/api/v1/identity/identifications')
  Future<HttpResponse<IdentificationDto>> postApiV1IdentityIdentifications({
    @Body() AddIdentificationDto? body,
  });

  @GET('/api/v1/identity/identifications')
  Future<HttpResponse<IdentificationDtoPaginatedResult>> getApiV1IdentityIdentifications({
    @Query('AuthId') String? authId,
    @Query('DocumentId') String? documentId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/identity/identifications/{id}')
  Future<HttpResponse<IdentificationDto>> getApiV1IdentityIdentificationsId({
    @Path('id') required String id,
  });

  @PUT('/api/v1/identity/identifications/{id}')
  Future<HttpResponse<IdentificationDto>> putApiV1IdentityIdentificationsId({
    @Path('id') required String id,
    @Body() UpdateIdentificationDto? body,
  });

  @DELETE('/api/v1/identity/identifications/{id}')
  Future<HttpResponse<void>> deleteApiV1IdentityIdentificationsId({
    @Path('id') required String id,
  });
}
