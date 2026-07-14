// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/administrative_division_dto.dart';
import '../models/administrative_division_dto_paginated_result.dart';
import '../models/search_administrative_divisions_by_name_result_dto.dart';

part 'administrative_division_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AdministrativeDivisionClient {
  factory AdministrativeDivisionClient(Dio dio, {String? baseUrl}) = _AdministrativeDivisionClient;

  @GET('/api/v1/administrative-divisions')
  Future<HttpResponse<AdministrativeDivisionDtoPaginatedResult>> getApiV1AdministrativeDivisions({
    @Query('Country') String? country,
    @Query('ParentId') String? parentId,
    @Query('LevelId') String? levelId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/administrative-divisions/search')
  Future<HttpResponse<SearchAdministrativeDivisionsByNameResultDto>> getApiV1AdministrativeDivisionsSearch({
    @Query('country') String? country,
    @Query('name') String? name,
  });

  @GET('/api/v1/administrative-divisions/{id}')
  Future<HttpResponse<AdministrativeDivisionDto>> getApiV1AdministrativeDivisionsId({
    @Path('id') required String id,
  });
}
