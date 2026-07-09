// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/consumer_profile_dto.dart';
import '../models/sign_up_consumer_dto.dart';
import '../models/sign_up_user_with_email_dto.dart';
import '../models/update_consumer_profile_dto.dart';

part 'consumer_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class ConsumerClient {
  factory ConsumerClient(Dio dio, {String? baseUrl}) = _ConsumerClient;

  @POST('/api/v1/consumer/sign-up')
  Future<HttpResponse<SignUpUserWithEmailDto>> postApiV1ConsumerSignUp({
    @Body() SignUpConsumerDto? body,
  });

  @GET('/api/v1/consumer/profile')
  Future<HttpResponse<ConsumerProfileDto>> getApiV1ConsumerProfile();

  @PUT('/api/v1/consumer/profile')
  Future<HttpResponse<ConsumerProfileDto>> putApiV1ConsumerProfile({
    @Body() UpdateConsumerProfileDto? body,
  });
}
