// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/property_category_dto.dart';

part 'property_category_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class PropertyCategoryClient {
  factory PropertyCategoryClient(Dio dio, {String? baseUrl}) = _PropertyCategoryClient;

  @GET('/api/v1/property-categories')
  Future<HttpResponse<List<PropertyCategoryDto>>> getApiV1PropertyCategories();

  @GET('/api/v1/property-categories/{id}')
  Future<HttpResponse<PropertyCategoryDto>> getApiV1PropertyCategoriesId({
    @Path('id') required String id,
  });
}
