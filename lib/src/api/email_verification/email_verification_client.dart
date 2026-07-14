// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_verify_token_dto.dart';
import '../models/email_request_dto.dart';
import '../models/token_dto.dart';

part 'email_verification_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class EmailVerificationClient {
  factory EmailVerificationClient(Dio dio, {String? baseUrl}) = _EmailVerificationClient;

  @POST('/api/v1/auth/email-verifications')
  Future<HttpResponse<TokenDto>> postApiV1AuthEmailVerifications({
    @Body() EmailRequestDto? body,
  });

  @POST('/api/v1/auth/email-verifications/confirm')
  Future<HttpResponse<void>> postApiV1AuthEmailVerificationsConfirm({
    @Body() AddVerifyTokenDto? body,
  });
}
