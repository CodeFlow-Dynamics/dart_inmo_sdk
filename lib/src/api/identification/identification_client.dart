// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/identification_dto.dart';
import '../models/identification_dto_paginated_result.dart';

part 'identification_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class IdentificationClient {
  factory IdentificationClient(Dio dio, {String? baseUrl}) = _IdentificationClient;

  @MultiPart()
  @POST('/api/v1/Identification')
  Future<HttpResponse<IdentificationDto>> postApiV1Identification({
    @Part(name: 'UserId') String? userId,
    @Part(name: 'DocumentId') String? documentId,
    @Part(name: 'IdNumber') String? idNumber,
    @Part(name: 'DateOfBirth') String? dateOfBirth,
    @Part(name: 'ExpiryDate') String? expiryDate,
    @Part(name: 'PhotoObverse') File? photoObverse,
    @Part(name: 'PhotoReverse') File? photoReverse,
  });

  @GET('/api/v1/Identification')
  Future<HttpResponse<IdentificationDtoPaginatedResult>> getApiV1Identification({
    @Query('UserId') String? userId,
    @Query('DocumentId') String? documentId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/Identification/{id}')
  Future<HttpResponse<IdentificationDto>> getApiV1IdentificationId({
    @Path('id') required String id,
  });

  @MultiPart()
  @PUT('/api/v1/Identification/{id}')
  Future<HttpResponse<IdentificationDto>> putApiV1IdentificationId({
    @Path('id') required String id,
    @Part(name: 'IdNumber') String? idNumber,
    @Part(name: 'DateOfBirth') String? dateOfBirth,
    @Part(name: 'ExpiryDate') String? expiryDate,
    @Part(name: 'PhotoObverse') File? photoObverse,
    @Part(name: 'PhotoReverse') File? photoReverse,
  });

  @DELETE('/api/v1/Identification/{id}')
  Future<HttpResponse<void>> deleteApiV1IdentificationId({
    @Path('id') required String id,
  });
}
