// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_admin_dto.dart';
import '../models/admin_dto.dart';
import '../models/employee_profile_dto.dart';
import '../models/update_admin_dto.dart';
import '../models/update_auth_status_dto.dart';

part 'admin_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AdminClient {
  factory AdminClient(Dio dio, {String? baseUrl}) = _AdminClient;

  @POST('/api/v1/admins')
  Future<HttpResponse<AdminDto>> postApiV1Admins({
    @Body() AddAdminDto? body,
  });

  @PUT('/api/v1/admins/{id}')
  Future<HttpResponse<AdminDto>> putApiV1AdminsId({
    @Path('id') required String id,
    @Body() UpdateAdminDto? body,
  });

  @GET('/api/v1/admins/{id}')
  Future<HttpResponse<AdminDto>> getApiV1AdminsId({
    @Path('id') required String id,
  });

  @DELETE('/api/v1/admins/{id}')
  Future<HttpResponse<void>> deleteApiV1AdminsId({
    @Path('id') required String id,
  });

  @GET('/api/v1/admins/profile')
  Future<HttpResponse<EmployeeProfileDto>> getApiV1AdminsProfile();

  @PUT('/api/v1/admins/auths/{id}/status')
  Future<HttpResponse<void>> putApiV1AdminsAuthsIdStatus({
    @Path('id') required String id,
    @Body() UpdateAuthStatusDto? body,
  });
}
