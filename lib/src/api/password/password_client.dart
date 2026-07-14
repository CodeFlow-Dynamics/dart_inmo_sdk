// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/change_password_dto.dart';
import '../models/email_request_dto.dart';
import '../models/reset_password_dto.dart';
import '../models/token_dto.dart';

part 'password_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class PasswordClient {
  factory PasswordClient(Dio dio, {String? baseUrl}) = _PasswordClient;

  @POST('/api/v1/auth/passwords/forgot')
  Future<HttpResponse<TokenDto>> postApiV1AuthPasswordsForgot({
    @Body() EmailRequestDto? body,
  });

  @POST('/api/v1/auth/passwords/reset')
  Future<HttpResponse<String>> postApiV1AuthPasswordsReset({
    @Body() ResetPasswordDto? body,
  });

  @POST('/api/v1/auth/passwords/change')
  Future<HttpResponse<String>> postApiV1AuthPasswordsChange({
    @Body() ChangePasswordDto? body,
  });
}
