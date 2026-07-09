// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_publisher_member_dto.dart';
import '../models/create_publisher_user_dto.dart';
import '../models/list_publisher_members_response_dto.dart';
import '../models/listing_dto.dart';
import '../models/listing_summary_dto_paginated_result.dart';
import '../models/publisher_member_dto.dart';
import '../models/publisher_user_dto.dart';
import '../models/publisher_user_dto_paginated_result.dart';
import '../models/update_publisher_dto.dart';

part 'publisher_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class PublisherClient {
  factory PublisherClient(Dio dio, {String? baseUrl}) = _PublisherClient;

  @GET('/api/v1/publishers')
  Future<HttpResponse<PublisherUserDtoPaginatedResult>> getApiV1Publishers({
    @Query('PublisherTypeId') String? publisherTypeId,
    @Query('ClientUserId') String? clientUserId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @POST('/api/v1/publishers')
  Future<HttpResponse<PublisherUserDto>> postApiV1Publishers({
    @Body() CreatePublisherUserDto? body,
  });

  @POST('/api/v1/publishers/{id}/members')
  Future<HttpResponse<PublisherMemberDto>> postApiV1PublishersIdMembers({
    @Path('id') required String id,
    @Body() AddPublisherMemberDto? body,
  });

  @GET('/api/v1/publishers/{id}/members')
  Future<HttpResponse<ListPublisherMembersResponseDto>> getApiV1PublishersIdMembers({
    @Path('id') required String id,
  });

  @DELETE('/api/v1/publishers/{id}/members/{clientUserId}')
  Future<HttpResponse<void>> deleteApiV1PublishersIdMembersClientUserId({
    @Path('id') required String id,
    @Path('clientUserId') required String clientUserId,
  });

  @PUT('/api/v1/publishers/{id}')
  Future<HttpResponse<PublisherUserDto>> putApiV1PublishersId({
    @Path('id') required String id,
    @Body() UpdatePublisherDto? body,
  });

  @GET('/api/v1/publishers/{id}')
  Future<HttpResponse<PublisherUserDto>> getApiV1PublishersId({
    @Path('id') required String id,
  });

  @GET('/api/v1/publishers/{id}/listings/{listingId}')
  Future<HttpResponse<ListingDto>> getApiV1PublishersIdListingsListingId({
    @Path('id') required String id,
    @Path('listingId') required String listingId,
  });

  @GET('/api/v1/publishers/{id}/listings')
  Future<HttpResponse<ListingSummaryDtoPaginatedResult>> getApiV1PublishersIdListings({
    @Path('id') required String id,
    @Query('InmoCategoryId') String? inmoCategoryId,
    @Query('InmoTypeId') String? inmoTypeId,
    @Query('AdministrativeDivisionId') String? administrativeDivisionId,
    @Query('OfferType') String? offerType,
    @Query('OfferStatus') String? offerStatus,
    @Query('MinPrice') double? minPrice,
    @Query('MaxPrice') double? maxPrice,
    @Query('CurrencyId') String? currencyId,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });
}
