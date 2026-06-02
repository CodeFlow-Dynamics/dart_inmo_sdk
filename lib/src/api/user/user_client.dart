// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';
import '../retrofit_query_serializers.dart';

import '../models/sign_up_user_with_email_and_password_dto.dart';
import '../models/update_language_preference_dto.dart';
import '../models/user_dto_paginated_result.dart';

part 'user_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class UserClient {
  factory UserClient(Dio dio, {String? baseUrl}) = _UserClient;

  @MultiPart()
  @POST('/api/v1/User')
  Future<HttpResponse<SignUpUserWithEmailAndPasswordDto>> postApiV1User({
    @Part(name: 'Email') String? email,
    @Part(name: 'Password') String? password,
    @Part(name: 'RepeatPassword') String? repeatPassword,
    @Part(name: 'FirstName') String? firstName,
    @Part(name: 'LastName') String? lastName,
    @Part(name: 'CountryCode') String? countryCode,
    @Part(name: 'PhoneNumber') String? phoneNumber,
    @Part(name: 'PhotoFile') File? photoFile,
    @Part(name: 'PreferredLanguage') String? preferredLanguage,
  });

  @GET('/api/v1/User')
  Future<HttpResponse<UserDtoPaginatedResult>> getApiV1User({
    @Query('UserTypeId') String? userTypeId,
    @Query('FirstName') String? firstName,
    @Query('LastName') String? lastName,
    @Query('PreferredLanguage') String? preferredLanguage,
    @Query('CreatedFrom') DateTime? createdFrom,
    @Query('CreatedTo') DateTime? createdTo,
    @Query('UpdatedFrom') DateTime? updatedFrom,
    @Query('UpdatedTo') DateTime? updatedTo,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @PUT('/api/v1/User/preferences/language')
  Future<HttpResponse<void>> putApiV1UserPreferencesLanguage({
    @Body() UpdateLanguagePreferenceDto? body,
  });
}
