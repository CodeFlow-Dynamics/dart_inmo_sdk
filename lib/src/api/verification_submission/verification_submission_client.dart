// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/review_verification_submission_dto.dart';
import '../models/verification_submission_dto.dart';
import '../models/verification_submission_dto_paginated_result.dart';
import '../models/verification_submission_history_dto.dart';

part 'verification_submission_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class VerificationSubmissionClient {
  factory VerificationSubmissionClient(Dio dio, {String? baseUrl}) = _VerificationSubmissionClient;

  @GET('/api/v1/VerificationSubmission')
  Future<HttpResponse<VerificationSubmissionDtoPaginatedResult>> getApiV1VerificationSubmission({
    @Query('UserId') String? userId,
    @Query('Status') int? status,
    @Query('ReviewerId') String? reviewerId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @MultiPart()
  @POST('/api/v1/VerificationSubmission')
  Future<HttpResponse<VerificationSubmissionDto>> postApiV1VerificationSubmission({
    @Part(name: 'UserId') String? userId,
    @Part(name: 'DocumentId') String? documentId,
    @Part(name: 'IdNumber') String? idNumber,
    @Part(name: 'DateOfBirth') String? dateOfBirth,
    @Part(name: 'ExpiryDate') String? expiryDate,
    @Part(name: 'UserNotes') String? userNotes,
    @Part(name: 'PhotoObverse') File? photoObverse,
    @Part(name: 'PhotoReverse') File? photoReverse,
  });

  @GET('/api/v1/VerificationSubmission/{id}/history')
  Future<HttpResponse<List<VerificationSubmissionHistoryDto>>> getApiV1VerificationSubmissionIdHistory({
    @Path('id') required String id,
  });

  @GET('/api/v1/VerificationSubmission/{id}')
  Future<HttpResponse<VerificationSubmissionDto>> getApiV1VerificationSubmissionId({
    @Path('id') required String id,
  });

  @DELETE('/api/v1/VerificationSubmission/{id}')
  Future<HttpResponse<void>> deleteApiV1VerificationSubmissionId({
    @Path('id') required String id,
  });

  @MultiPart()
  @PUT('/api/v1/VerificationSubmission/{id}/resubmit')
  Future<HttpResponse<VerificationSubmissionDto>> putApiV1VerificationSubmissionIdResubmit({
    @Path('id') required String id,
    @Part(name: 'IdNumber') String? idNumber,
    @Part(name: 'DateOfBirth') String? dateOfBirth,
    @Part(name: 'ExpiryDate') String? expiryDate,
    @Part(name: 'UserNotes') String? userNotes,
    @Part(name: 'PhotoObverse') File? photoObverse,
    @Part(name: 'PhotoReverse') File? photoReverse,
  });

  @PUT('/api/v1/VerificationSubmission/{id}/review')
  Future<HttpResponse<VerificationSubmissionDto>> putApiV1VerificationSubmissionIdReview({
    @Path('id') required String id,
    @Body() ReviewVerificationSubmissionDto? body,
  });
}
