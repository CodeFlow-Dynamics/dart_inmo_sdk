// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/media_file_dto.dart';
import '../models/signed_url_dto.dart';

part 'media_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class MediaClient {
  factory MediaClient(Dio dio, {String? baseUrl}) = _MediaClient;

  @MultiPart()
  @POST('/api/v1/Media/upload')
  Future<HttpResponse<MediaFileDto>> postApiV1MediaUpload({
    @Part(name: 'OwnerType') String? ownerType,
    @Part(name: 'OwnerId') String? ownerId,
    @Part(name: 'MediaType') String? mediaType,
    @Part(name: 'File') File? file,
  });

  @DELETE('/api/v1/Media/{id}')
  Future<HttpResponse<void>> deleteApiV1MediaId({
    @Path('id') required String id,
  });

  @GET('/api/v1/Media/{id}')
  Future<HttpResponse<MediaFileDto>> getApiV1MediaId({
    @Path('id') required String id,
  });

  @GET('/api/v1/Media/{id}/signed-url')
  Future<HttpResponse<SignedUrlDto>> getApiV1MediaIdSignedUrl({
    @Path('id') required String id,
  });

  @GET('/api/v1/Media/{id}/events')
  Future<HttpResponse<void>> getApiV1MediaIdEvents({
    @Path('id') required String id,
  });
}
