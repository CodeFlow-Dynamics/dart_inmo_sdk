// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_verify_token_dto.dart';
import '../models/token_dto.dart';

part 'token_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class TokenClient {
  factory TokenClient(Dio dio, {String? baseUrl}) = _TokenClient;

  @POST('/api/v1/Token/generate')
  Future<HttpResponse<TokenDto>> postApiV1TokenGenerate({
    @Query('email') String? email,
  });

  @POST('/api/v1/Token/verify')
  Future<HttpResponse<void>> postApiV1TokenVerify({
    @Body() AddVerifyTokenDto? body,
  });
}
