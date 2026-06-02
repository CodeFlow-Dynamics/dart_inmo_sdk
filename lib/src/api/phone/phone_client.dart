// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_phone_dto.dart';
import '../models/phone_dto.dart';

part 'phone_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class PhoneClient {
  factory PhoneClient(Dio dio, {String? baseUrl}) = _PhoneClient;

  @POST('/api/v1/Phone')
  Future<HttpResponse<PhoneDto>> postApiV1Phone({
    @Body() AddPhoneDto? body,
  });
}
