// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_country_dto.dart';
import '../models/bulk_add_country_dto.dart';
import '../models/bulk_create_countries_response_dto.dart';
import '../models/country_dto.dart';
import '../models/list_countries_response_dto.dart';
import '../models/update_country_dto.dart';

part 'country_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class CountryClient {
  factory CountryClient(Dio dio, {String? baseUrl}) = _CountryClient;

  @POST('/api/v1/Country')
  Future<HttpResponse<CountryDto>> postApiV1Country({
    @Body() AddCountryDto? body,
  });

  @GET('/api/v1/Country')
  Future<HttpResponse<ListCountriesResponseDto>> getApiV1Country();

  @PUT('/api/v1/Country/{id}')
  Future<HttpResponse<CountryDto>> putApiV1CountryId({
    @Path('id') required String id,
    @Body() UpdateCountryDto? body,
  });

  @GET('/api/v1/Country/{id}')
  Future<HttpResponse<CountryDto>> getApiV1CountryId({
    @Path('id') required String id,
  });

  @DELETE('/api/v1/Country/{id}')
  Future<HttpResponse<void>> deleteApiV1CountryId({
    @Path('id') required String id,
  });

  @POST('/api/v1/Country/bulk')
  Future<HttpResponse<BulkCreateCountriesResponseDto>> postApiV1CountryBulk({
    @Body() BulkAddCountryDto? body,
  });
}
