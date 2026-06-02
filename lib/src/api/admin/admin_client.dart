// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_admin_dto.dart';
import '../models/update_admin_dto.dart';
import '../models/user_dto.dart';

part 'admin_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AdminClient {
  factory AdminClient(Dio dio, {String? baseUrl}) = _AdminClient;

  @POST('/api/v1/Admin')
  Future<HttpResponse<UserDto>> postApiV1Admin({
    @Body() AddAdminDto? body,
  });

  @PUT('/api/v1/Admin/{id}')
  Future<HttpResponse<UserDto>> putApiV1AdminId({
    @Path('id') required String id,
    @Body() UpdateAdminDto? body,
  });

  @GET('/api/v1/Admin/{id}')
  Future<HttpResponse<UserDto>> getApiV1AdminId({
    @Path('id') required String id,
  });

  @DELETE('/api/v1/Admin/{id}')
  Future<HttpResponse<void>> deleteApiV1AdminId({
    @Path('id') required String id,
  });
}
