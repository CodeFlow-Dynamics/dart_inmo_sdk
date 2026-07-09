// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_verification_submission_dto.dart';
import '../models/review_verification_submission_dto.dart';
import '../models/update_verification_submission_dto.dart';
import '../models/verification_submission_dto.dart';
import '../models/verification_submission_dto_paginated_result.dart';
import '../models/verification_submission_history_dto.dart';

part 'verification_submission_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class VerificationSubmissionClient {
  factory VerificationSubmissionClient(Dio dio, {String? baseUrl}) = _VerificationSubmissionClient;

  @GET('/api/v1/identity/verification-submissions')
  Future<HttpResponse<VerificationSubmissionDtoPaginatedResult>> getApiV1IdentityVerificationSubmissions({
    @Query('AuthId') String? authId,
    @Query('Status') int? status,
    @Query('ReviewerId') String? reviewerId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @POST('/api/v1/identity/verification-submissions')
  Future<HttpResponse<VerificationSubmissionDto>> postApiV1IdentityVerificationSubmissions({
    @Body() AddVerificationSubmissionDto? body,
  });

  @GET('/api/v1/identity/verification-submissions/{id}/history')
  Future<HttpResponse<List<VerificationSubmissionHistoryDto>>> getApiV1IdentityVerificationSubmissionsIdHistory({
    @Path('id') required String id,
  });

  @GET('/api/v1/identity/verification-submissions/{id}')
  Future<HttpResponse<VerificationSubmissionDto>> getApiV1IdentityVerificationSubmissionsId({
    @Path('id') required String id,
  });

  @DELETE('/api/v1/identity/verification-submissions/{id}')
  Future<HttpResponse<void>> deleteApiV1IdentityVerificationSubmissionsId({
    @Path('id') required String id,
  });

  @PUT('/api/v1/identity/verification-submissions/{id}/resubmit')
  Future<HttpResponse<VerificationSubmissionDto>> putApiV1IdentityVerificationSubmissionsIdResubmit({
    @Path('id') required String id,
    @Body() UpdateVerificationSubmissionDto? body,
  });

  @PUT('/api/v1/identity/verification-submissions/{id}/review')
  Future<HttpResponse<VerificationSubmissionDto>> putApiV1IdentityVerificationSubmissionsIdReview({
    @Path('id') required String id,
    @Body() ReviewVerificationSubmissionDto? body,
  });
}
