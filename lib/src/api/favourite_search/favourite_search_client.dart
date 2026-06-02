// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/create_favourite_search_dto.dart';
import '../models/favourite_search_dto.dart';
import '../models/update_favourite_search_dto.dart';

part 'favourite_search_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class FavouriteSearchClient {
  factory FavouriteSearchClient(Dio dio, {String? baseUrl}) = _FavouriteSearchClient;

  @POST('/api/v1/favourite-searches')
  Future<HttpResponse<FavouriteSearchDto>> postApiV1FavouriteSearches({
    @Body() CreateFavouriteSearchDto? body,
  });

  @GET('/api/v1/favourite-searches')
  Future<HttpResponse<List<FavouriteSearchDto>>> getApiV1FavouriteSearches();

  @GET('/api/v1/favourite-searches/{id}')
  Future<HttpResponse<FavouriteSearchDto>> getApiV1FavouriteSearchesId({
    @Path('id') required String id,
  });

  @PUT('/api/v1/favourite-searches/{id}')
  Future<HttpResponse<FavouriteSearchDto>> putApiV1FavouriteSearchesId({
    @Path('id') required String id,
    @Body() UpdateFavouriteSearchDto? body,
  });

  @DELETE('/api/v1/favourite-searches/{id}')
  Future<HttpResponse<void>> deleteApiV1FavouriteSearchesId({
    @Path('id') required String id,
  });

  @PATCH('/api/v1/favourite-searches/{id}/pause')
  Future<HttpResponse<FavouriteSearchDto>> patchApiV1FavouriteSearchesIdPause({
    @Path('id') required String id,
  });

  @PATCH('/api/v1/favourite-searches/{id}/resume')
  Future<HttpResponse<FavouriteSearchDto>> patchApiV1FavouriteSearchesIdResume({
    @Path('id') required String id,
  });
}
