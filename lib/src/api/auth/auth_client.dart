// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/list_devices_response_dto.dart';
import '../models/login_client_with_google_dto.dart';
import '../models/login_response_dto.dart';
import '../models/login_user_with_email_dto.dart';
import '../models/refresh_token_dto.dart';
import '../models/refresh_token_response_dto.dart';

part 'auth_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/api/v1/auth/sessions/clients/email')
  Future<HttpResponse<LoginResponseDto>> postApiV1AuthSessionsClientsEmail({
    @Body() LoginUserWithEmailDto? body,
  });

  @POST('/api/v1/auth/sessions/clients/google')
  Future<HttpResponse<LoginResponseDto>> postApiV1AuthSessionsClientsGoogle({
    @Body() LoginClientWithGoogleDto? body,
  });

  @POST('/api/v1/auth/sessions/admins/email')
  Future<HttpResponse<LoginResponseDto>> postApiV1AuthSessionsAdminsEmail({
    @Body() LoginUserWithEmailDto? body,
  });

  @POST('/api/v1/auth/sessions/refresh')
  Future<HttpResponse<RefreshTokenResponseDto>> postApiV1AuthSessionsRefresh({
    @Body() RefreshTokenDto? body,
  });

  @DELETE('/api/v1/auth/sessions/devices')
  Future<HttpResponse<void>> deleteApiV1AuthSessionsDevices();

  @GET('/api/v1/auth/sessions/devices')
  Future<HttpResponse<ListDevicesResponseDto>> getApiV1AuthSessionsDevices();

  @DELETE('/api/v1/auth/sessions/devices/{deviceId}')
  Future<HttpResponse<void>> deleteApiV1AuthSessionsDevicesDeviceId({
    @Path('deviceId') required String deviceId,
  });
}
