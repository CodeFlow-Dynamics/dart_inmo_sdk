// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/auth_security_dto.dart';

part 'auth_security_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AuthSecurityClient {
  factory AuthSecurityClient(Dio dio, {String? baseUrl}) = _AuthSecurityClient;

  @GET('/api/v1/AuthSecurity/user/{userId}')
  Future<HttpResponse<AuthSecurityDto>> getApiV1AuthSecurityUserUserId({
    @Path('userId') required String userId,
  });
}
