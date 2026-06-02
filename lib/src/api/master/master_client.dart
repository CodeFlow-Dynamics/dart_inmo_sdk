// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_master_user_dto.dart';
import '../models/sign_up_user_with_email_and_password_dto.dart';

part 'master_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class MasterClient {
  factory MasterClient(Dio dio, {String? baseUrl}) = _MasterClient;

  @POST('/api/v1/Master')
  Future<HttpResponse<SignUpUserWithEmailAndPasswordDto>> postApiV1Master({
    @Body() AddMasterUserDto? body,
  });
}
