// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/amenity_category_dto.dart';

part 'amenity_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AmenityClient {
  factory AmenityClient(Dio dio, {String? baseUrl}) = _AmenityClient;

  @GET('/api/v1/amenities')
  Future<HttpResponse<List<AmenityCategoryDto>>> getApiV1Amenities();
}
