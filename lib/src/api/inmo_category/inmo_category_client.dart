// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_inmo_category_dto.dart';
import '../models/inmo_category_dto.dart';

part 'inmo_category_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class InmoCategoryClient {
  factory InmoCategoryClient(Dio dio, {String? baseUrl}) = _InmoCategoryClient;

  @POST('/api/v1/InmoCategory')
  Future<HttpResponse<InmoCategoryDto>> postApiV1InmoCategory({
    @Body() AddInmoCategoryDto? body,
  });
}
