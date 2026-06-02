// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/user_media_dto.dart';

part 'user_media_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class UserMediaClient {
  factory UserMediaClient(Dio dio, {String? baseUrl}) = _UserMediaClient;

  @MultiPart()
  @POST('/api/v1/UserMedia')
  Future<HttpResponse<UserMediaDto>> postApiV1UserMedia({
    @Part(name: 'PhotoFile') File? photoFile,
    @Part(name: 'UserId') String? userId,
    @Part(name: 'MediaTypeId') String? mediaTypeId,
  });
}
