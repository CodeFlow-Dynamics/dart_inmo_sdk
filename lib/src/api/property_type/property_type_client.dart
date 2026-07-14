// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/property_type_dto.dart';

part 'property_type_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class PropertyTypeClient {
  factory PropertyTypeClient(Dio dio, {String? baseUrl}) = _PropertyTypeClient;

  @GET('/api/v1/property-types')
  Future<HttpResponse<List<PropertyTypeDto>>> getApiV1PropertyTypes();

  @GET('/api/v1/property-types/{id}')
  Future<HttpResponse<PropertyTypeDto>> getApiV1PropertyTypesId({
    @Path('id') required String id,
  });
}
