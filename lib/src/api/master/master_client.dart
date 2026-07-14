// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/sign_up_admin_dto.dart';
import '../models/sign_up_user_with_email_dto.dart';

part 'master_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class MasterClient {
  factory MasterClient(Dio dio, {String? baseUrl}) = _MasterClient;

  @POST('/api/v1/auth/bootstrap/master')
  Future<HttpResponse<SignUpUserWithEmailDto>> postApiV1AuthBootstrapMaster({
    @Body() SignUpAdminDto? body,
  });
}
