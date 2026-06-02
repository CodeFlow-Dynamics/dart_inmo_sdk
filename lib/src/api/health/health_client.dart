// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

part 'health_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class HealthClient {
  factory HealthClient(Dio dio, {String? baseUrl}) = _HealthClient;

  @GET('/api/v1/Health')
  Future<HttpResponse<void>> getApiV1Health();
}
