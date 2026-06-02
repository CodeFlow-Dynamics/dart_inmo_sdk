// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';
import '../retrofit_query_serializers.dart';

import '../models/inquiry_detail_dto.dart';
import '../models/inquiry_inbox_dto_paginated_result.dart';
import '../models/inquiry_sent_dto_paginated_result.dart';
import '../models/submit_inquiry_dto.dart';
import '../models/submit_inquiry_result_dto.dart';
import '../models/update_inquiry_status_dto.dart';
import '../models/update_inquiry_status_result_dto.dart';

part 'inquiry_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class InquiryClient {
  factory InquiryClient(Dio dio, {String? baseUrl}) = _InquiryClient;

  @POST('/api/v1/inquiries')
  Future<HttpResponse<SubmitInquiryResultDto>> postApiV1Inquiries({
    @Body() SubmitInquiryDto? body,
  });

  @GET('/api/v1/inquiries/inbox')
  Future<HttpResponse<InquiryInboxDtoPaginatedResult>> getApiV1InquiriesInbox({
    @Query('Status') List<String>? status,
    @Query('ListingId') String? listingId,
    @Query('From') DateTime? from,
    @Query('To') DateTime? to,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/inquiries/sent')
  Future<HttpResponse<InquirySentDtoPaginatedResult>> getApiV1InquiriesSent({
    @Query('Status') List<String>? status,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @GET('/api/v1/inquiries/inbox/{id}')
  Future<HttpResponse<InquiryDetailDto>> getApiV1InquiriesInboxId({
    @Path('id') required String id,
  });

  @PATCH('/api/v1/inquiries/inbox/{id}/status')
  Future<HttpResponse<UpdateInquiryStatusResultDto>> patchApiV1InquiriesInboxIdStatus({
    @Path('id') required String id,
    @Body() UpdateInquiryStatusDto? body,
  });
}
