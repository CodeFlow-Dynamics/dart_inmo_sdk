// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_inmo_type_dto.dart';
import '../models/inmo_type_dto.dart';

part 'inmo_type_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class InmoTypeClient {
  factory InmoTypeClient(Dio dio, {String? baseUrl}) = _InmoTypeClient;

  @POST('/api/v1/InmoType')
  Future<HttpResponse<InmoTypeDto>> postApiV1InmoType({
    @Body() AddInmoTypeDto? body,
  });
}
