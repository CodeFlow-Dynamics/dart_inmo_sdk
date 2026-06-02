// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_inmo_category_dto.dart';
import '../models/inmo_category_dto.dart';
import '../models/list_inmo_categories_response_dto.dart';
import '../models/update_inmo_category_dto.dart';

part 'inmo_category_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class InmoCategoryClient {
  factory InmoCategoryClient(Dio dio, {String? baseUrl}) = _InmoCategoryClient;

  @POST('/api/v1/inmo-categories')
  Future<HttpResponse<InmoCategoryDto>> postApiV1InmoCategories({
    @Body() AddInmoCategoryDto? body,
  });

  @GET('/api/v1/inmo-categories')
  Future<HttpResponse<ListInmoCategoriesResponseDto>> getApiV1InmoCategories();

  @PUT('/api/v1/inmo-categories/{id}')
  Future<HttpResponse<InmoCategoryDto>> putApiV1InmoCategoriesId({
    @Path('id') required String id,
    @Body() UpdateInmoCategoryDto? body,
  });

  @DELETE('/api/v1/inmo-categories/{id}')
  Future<HttpResponse<void>> deleteApiV1InmoCategoriesId({
    @Path('id') required String id,
  });

  @GET('/api/v1/inmo-categories/{id}')
  Future<HttpResponse<InmoCategoryDto>> getApiV1InmoCategoriesId({
    @Path('id') required String id,
  });
}
