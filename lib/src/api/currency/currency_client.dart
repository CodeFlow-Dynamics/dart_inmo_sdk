// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/currency_dto.dart';

part 'currency_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class CurrencyClient {
  factory CurrencyClient(Dio dio, {String? baseUrl}) = _CurrencyClient;

  @GET('/api/v1/currencies')
  Future<HttpResponse<List<CurrencyDto>>> getApiV1Currencies();

  @GET('/api/v1/currencies/{id}')
  Future<HttpResponse<CurrencyDto>> getApiV1CurrenciesId({
    @Path('id') required String id,
  });
}
