// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_client.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _SearchClient implements SearchClient {
  _SearchClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<ReindexResultDto>>
  postApiV1SearchesListingsReindex() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<ReindexResultDto>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/searches/listings/reindex',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late ReindexResultDto _value;
    try {
      _value = await compute(deserializeReindexResultDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SearchListingsResultDto>> getApiV1SearchesListings({
    String? q,
    String? offerType,
    double? minPrice,
    double? maxPrice,
    String? currency,
    String? propertyCategory,
    String? propertyType,
    String? administrativeDivisionId,
    int? minBedrooms,
    int? maxBedrooms,
    int? minBathrooms,
    int? maxBathrooms,
    double? minTotalArea,
    double? maxTotalArea,
    double? minBuiltArea,
    double? maxBuiltArea,
    double? minLotArea,
    double? maxLotArea,
    int? minParkingSpaces,
    bool? isFurnished,
    bool? hasRoadAccess,
    bool? hasUtilities,
    List<String>? amenityIds,
    String? promotionTier,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'Q': q,
      r'OfferType': offerType,
      r'MinPrice': minPrice,
      r'MaxPrice': maxPrice,
      r'Currency': currency,
      r'PropertyCategory': propertyCategory,
      r'PropertyType': propertyType,
      r'AdministrativeDivisionId': administrativeDivisionId,
      r'MinBedrooms': minBedrooms,
      r'MaxBedrooms': maxBedrooms,
      r'MinBathrooms': minBathrooms,
      r'MaxBathrooms': maxBathrooms,
      r'MinTotalArea': minTotalArea,
      r'MaxTotalArea': maxTotalArea,
      r'MinBuiltArea': minBuiltArea,
      r'MaxBuiltArea': maxBuiltArea,
      r'MinLotArea': minLotArea,
      r'MaxLotArea': maxLotArea,
      r'MinParkingSpaces': minParkingSpaces,
      r'IsFurnished': isFurnished,
      r'HasRoadAccess': hasRoadAccess,
      r'HasUtilities': hasUtilities,
      r'AmenityIds': amenityIds,
      r'PromotionTier': promotionTier,
      r'SortBy': sortBy,
      r'SortDirection': sortDirection,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'Cursor': cursor,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<SearchListingsResultDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/searches/listings',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late SearchListingsResultDto _value;
    try {
      _value = await compute(deserializeSearchListingsResultDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<GeoSearchResultDto>>
  getApiV1SearchesListingsGeoRectangular({
    double? neLat,
    double? neLng,
    double? swLat,
    double? swLng,
    String? q,
    String? offerType,
    double? minPrice,
    double? maxPrice,
    String? currency,
    String? propertyCategory,
    String? propertyType,
    String? administrativeDivisionId,
    int? minBedrooms,
    int? maxBedrooms,
    int? minBathrooms,
    int? maxBathrooms,
    double? minTotalArea,
    double? maxTotalArea,
    double? minBuiltArea,
    double? maxBuiltArea,
    double? minLotArea,
    double? maxLotArea,
    int? minParkingSpaces,
    bool? isFurnished,
    bool? hasRoadAccess,
    bool? hasUtilities,
    List<String>? amenityIds,
    String? promotionTier,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'NeLat': neLat,
      r'NeLng': neLng,
      r'SwLat': swLat,
      r'SwLng': swLng,
      r'Q': q,
      r'OfferType': offerType,
      r'MinPrice': minPrice,
      r'MaxPrice': maxPrice,
      r'Currency': currency,
      r'PropertyCategory': propertyCategory,
      r'PropertyType': propertyType,
      r'AdministrativeDivisionId': administrativeDivisionId,
      r'MinBedrooms': minBedrooms,
      r'MaxBedrooms': maxBedrooms,
      r'MinBathrooms': minBathrooms,
      r'MaxBathrooms': maxBathrooms,
      r'MinTotalArea': minTotalArea,
      r'MaxTotalArea': maxTotalArea,
      r'MinBuiltArea': minBuiltArea,
      r'MaxBuiltArea': maxBuiltArea,
      r'MinLotArea': minLotArea,
      r'MaxLotArea': maxLotArea,
      r'MinParkingSpaces': minParkingSpaces,
      r'IsFurnished': isFurnished,
      r'HasRoadAccess': hasRoadAccess,
      r'HasUtilities': hasUtilities,
      r'AmenityIds': amenityIds,
      r'PromotionTier': promotionTier,
      r'SortBy': sortBy,
      r'SortDirection': sortDirection,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'Cursor': cursor,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<GeoSearchResultDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/searches/listings/geo/rectangular',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late GeoSearchResultDto _value;
    try {
      _value = await compute(deserializeGeoSearchResultDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<GeoSearchResultDto>> getApiV1SearchesListingsGeoRadius({
    double? lat,
    double? lng,
    double? radiusKm,
    String? q,
    String? offerType,
    double? minPrice,
    double? maxPrice,
    String? currency,
    String? propertyCategory,
    String? propertyType,
    String? administrativeDivisionId,
    int? minBedrooms,
    int? maxBedrooms,
    int? minBathrooms,
    int? maxBathrooms,
    double? minTotalArea,
    double? maxTotalArea,
    double? minBuiltArea,
    double? maxBuiltArea,
    double? minLotArea,
    double? maxLotArea,
    int? minParkingSpaces,
    bool? isFurnished,
    bool? hasRoadAccess,
    bool? hasUtilities,
    List<String>? amenityIds,
    String? promotionTier,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'Lat': lat,
      r'Lng': lng,
      r'RadiusKm': radiusKm,
      r'Q': q,
      r'OfferType': offerType,
      r'MinPrice': minPrice,
      r'MaxPrice': maxPrice,
      r'Currency': currency,
      r'PropertyCategory': propertyCategory,
      r'PropertyType': propertyType,
      r'AdministrativeDivisionId': administrativeDivisionId,
      r'MinBedrooms': minBedrooms,
      r'MaxBedrooms': maxBedrooms,
      r'MinBathrooms': minBathrooms,
      r'MaxBathrooms': maxBathrooms,
      r'MinTotalArea': minTotalArea,
      r'MaxTotalArea': maxTotalArea,
      r'MinBuiltArea': minBuiltArea,
      r'MaxBuiltArea': maxBuiltArea,
      r'MinLotArea': minLotArea,
      r'MaxLotArea': maxLotArea,
      r'MinParkingSpaces': minParkingSpaces,
      r'IsFurnished': isFurnished,
      r'HasRoadAccess': hasRoadAccess,
      r'HasUtilities': hasUtilities,
      r'AmenityIds': amenityIds,
      r'PromotionTier': promotionTier,
      r'SortBy': sortBy,
      r'SortDirection': sortDirection,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'Cursor': cursor,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<GeoSearchResultDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/searches/listings/geo/radius',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late GeoSearchResultDto _value;
    try {
      _value = await compute(deserializeGeoSearchResultDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<AutocompleteResultDto>>
  getApiV1SearchesListingsAutocomplete({String? q}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'q': q};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<AutocompleteResultDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/searches/listings/autocomplete',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late AutocompleteResultDto _value;
    try {
      _value = await compute(deserializeAutocompleteResultDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
