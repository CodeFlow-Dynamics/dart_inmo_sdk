// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/country_dto.dart';
import '../models/list_countries_response_dto.dart';

part 'country_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class CountryClient {
  factory CountryClient(Dio dio, {String? baseUrl}) = _CountryClient;

  @GET('/api/v1/Country')
  Future<HttpResponse<ListCountriesResponseDto>> getApiV1Country();

  @GET('/api/v1/Country/{isoCode}')
  Future<HttpResponse<CountryDto>> getApiV1CountryIsoCode({
    @Path('isoCode') required String isoCode,
  });
}
