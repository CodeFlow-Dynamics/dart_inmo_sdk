// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identification_client.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _IdentificationClient implements IdentificationClient {
  _IdentificationClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<IdentificationDto>> postApiV1Identification({
    String? userId,
    String? documentId,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    File? photoObverse,
    File? photoReverse,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (userId != null) {
      _data.fields.add(MapEntry('UserId', userId));
    }
    if (documentId != null) {
      _data.fields.add(MapEntry('DocumentId', documentId));
    }
    if (idNumber != null) {
      _data.fields.add(MapEntry('IdNumber', idNumber));
    }
    if (dateOfBirth != null) {
      _data.fields.add(MapEntry('DateOfBirth', dateOfBirth));
    }
    if (expiryDate != null) {
      _data.fields.add(MapEntry('ExpiryDate', expiryDate));
    }
    if (photoObverse != null) {
      _data.files.add(
        MapEntry(
          'PhotoObverse',
          MultipartFile.fromFileSync(
            photoObverse.path,
            filename: photoObverse.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    if (photoReverse != null) {
      _data.files.add(
        MapEntry(
          'PhotoReverse',
          MultipartFile.fromFileSync(
            photoReverse.path,
            filename: photoReverse.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    final _options = _setStreamType<HttpResponse<IdentificationDto>>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/api/v1/Identification',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late IdentificationDto _value;
    try {
      _value = await compute(deserializeIdentificationDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<IdentificationDtoPaginatedResult>>
  getApiV1Identification({
    String? userId,
    String? documentId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'UserId': userId,
      r'DocumentId': documentId,
      r'SortBy': sortBy,
      r'SortDirection': sortDirection,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'Cursor': cursor,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<IdentificationDtoPaginatedResult>>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v1/Identification',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late IdentificationDtoPaginatedResult _value;
    try {
      _value = await compute(
        deserializeIdentificationDtoPaginatedResult,
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<IdentificationDto>> getApiV1IdentificationId({
    required String id,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<IdentificationDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/Identification/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late IdentificationDto _value;
    try {
      _value = await compute(deserializeIdentificationDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<IdentificationDto>> putApiV1IdentificationId({
    required String id,
    String? idNumber,
    String? dateOfBirth,
    String? expiryDate,
    File? photoObverse,
    File? photoReverse,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (idNumber != null) {
      _data.fields.add(MapEntry('IdNumber', idNumber));
    }
    if (dateOfBirth != null) {
      _data.fields.add(MapEntry('DateOfBirth', dateOfBirth));
    }
    if (expiryDate != null) {
      _data.fields.add(MapEntry('ExpiryDate', expiryDate));
    }
    if (photoObverse != null) {
      _data.files.add(
        MapEntry(
          'PhotoObverse',
          MultipartFile.fromFileSync(
            photoObverse.path,
            filename: photoObverse.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    if (photoReverse != null) {
      _data.files.add(
        MapEntry(
          'PhotoReverse',
          MultipartFile.fromFileSync(
            photoReverse.path,
            filename: photoReverse.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    final _options = _setStreamType<HttpResponse<IdentificationDto>>(
      Options(
            method: 'PUT',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/api/v1/Identification/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late IdentificationDto _value;
    try {
      _value = await compute(deserializeIdentificationDto, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<void>> deleteApiV1IdentificationId({
    required String id,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<void>>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/Identification/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<void>(_options);
    final httpResponse = HttpResponse(null, _result);
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
