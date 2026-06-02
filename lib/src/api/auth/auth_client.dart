// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/list_devices_response_dto.dart';
import '../models/login_response_dto.dart';
import '../models/login_user_with_email_and_password_dto.dart';
import '../models/refresh_token_dto.dart';
import '../models/refresh_token_response_dto.dart';

part 'auth_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/api/v1/Auth/login/email')
  Future<HttpResponse<LoginResponseDto>> postApiV1AuthLoginEmail({
    @Body() LoginUserWithEmailAndPasswordDto? body,
  });

  @POST('/api/v1/Auth/login/google/{idToken}')
  Future<HttpResponse<LoginResponseDto>> postApiV1AuthLoginGoogleIdToken({
    @Path('idToken') required String idToken,
    @Query('deviceName') String? deviceName,
  });

  @POST('/api/v1/Auth/refresh')
  Future<HttpResponse<RefreshTokenResponseDto>> postApiV1AuthRefresh({
    @Body() RefreshTokenDto? body,
  });

  @POST('/api/v1/Auth/logout')
  Future<HttpResponse<void>> postApiV1AuthLogout();

  @POST('/api/v1/Auth/logout/{deviceId}')
  Future<HttpResponse<void>> postApiV1AuthLogoutDeviceId({
    @Path('deviceId') required String deviceId,
  });

  @POST('/api/v1/Auth/logout/all')
  Future<HttpResponse<void>> postApiV1AuthLogoutAll();

  @GET('/api/v1/Auth/devices')
  Future<HttpResponse<ListDevicesResponseDto>> getApiV1AuthDevices();
}
