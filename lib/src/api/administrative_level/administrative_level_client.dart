// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/list_administrative_levels_response_dto.dart';

part 'administrative_level_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AdministrativeLevelClient {
  factory AdministrativeLevelClient(Dio dio, {String? baseUrl}) = _AdministrativeLevelClient;

  @GET('/api/v1/administrative-levels')
  Future<HttpResponse<ListAdministrativeLevelsResponseDto>> getApiV1AdministrativeLevels({
    @Query('countryId') String? countryId,
  });
}
