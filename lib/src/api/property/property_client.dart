// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:retrofit/retrofit.dart';

import '../models/add_property_unit_dto.dart';
import '../models/create_property_dto.dart';
import '../models/property_amenity_dto.dart';
import '../models/property_dto.dart';
import '../models/property_dto_paginated_result.dart';
import '../models/set_property_amenities_dto.dart';
import '../models/set_property_attributes_dto.dart';
import '../models/set_property_location_dto.dart';
import '../models/update_property_dto.dart';

part 'property_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class PropertyClient {
  factory PropertyClient(Dio dio, {String? baseUrl}) = _PropertyClient;

  @GET('/api/v1/properties')
  Future<HttpResponse<PropertyDtoPaginatedResult>> getApiV1Properties({
    @Query('OwnerId') String? ownerId,
    @Query('PropertyCategory') String? propertyCategory,
    @Query('PropertyType') String? propertyType,
    @Query('AdministrativeDivisionId') String? administrativeDivisionId,
    @Query('Status') String? status,
    @Query('SortBy') String? sortBy,
    @Query('SortDirection') String? sortDirection,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('Cursor') String? cursor,
  });

  @POST('/api/v1/properties')
  Future<HttpResponse<PropertyDto>> postApiV1Properties({
    @Body() CreatePropertyDto? body,
  });

  @GET('/api/v1/properties/{id}')
  Future<HttpResponse<PropertyDto>> getApiV1PropertiesId({
    @Path('id') required String id,
  });

  @PUT('/api/v1/properties/{id}')
  Future<HttpResponse<PropertyDto>> putApiV1PropertiesId({
    @Path('id') required String id,
    @Body() UpdatePropertyDto? body,
  });

  @PUT('/api/v1/properties/{id}/location')
  Future<HttpResponse<PropertyDto>> putApiV1PropertiesIdLocation({
    @Path('id') required String id,
    @Body() SetPropertyLocationDto? body,
  });

  @PUT('/api/v1/properties/{id}/amenities')
  Future<HttpResponse<List<PropertyAmenityDto>>> putApiV1PropertiesIdAmenities({
    @Path('id') required String id,
    @Body() SetPropertyAmenitiesDto? body,
  });

  @PUT('/api/v1/properties/{id}/attributes')
  Future<HttpResponse<PropertyDto>> putApiV1PropertiesIdAttributes({
    @Path('id') required String id,
    @Body() SetPropertyAttributesDto? body,
  });

  @POST('/api/v1/properties/{id}/units')
  Future<HttpResponse<PropertyDto>> postApiV1PropertiesIdUnits({
    @Path('id') required String id,
    @Body() AddPropertyUnitDto? body,
  });
}
