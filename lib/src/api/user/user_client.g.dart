// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_client.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _UserClient implements UserClient {
  _UserClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<SignUpUserWithEmailAndPasswordDto>> postApiV1User({
    String? email,
    String? password,
    String? repeatPassword,
    String? firstName,
    String? lastName,
    String? countryCode,
    String? phoneNumber,
    File? photoFile,
    String? preferredLanguage,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (email != null) {
      _data.fields.add(MapEntry('Email', email));
    }
    if (password != null) {
      _data.fields.add(MapEntry('Password', password));
    }
    if (repeatPassword != null) {
      _data.fields.add(MapEntry('RepeatPassword', repeatPassword));
    }
    if (firstName != null) {
      _data.fields.add(MapEntry('FirstName', firstName));
    }
    if (lastName != null) {
      _data.fields.add(MapEntry('LastName', lastName));
    }
    if (countryCode != null) {
      _data.fields.add(MapEntry('CountryCode', countryCode));
    }
    if (phoneNumber != null) {
      _data.fields.add(MapEntry('PhoneNumber', phoneNumber));
    }
    if (photoFile != null) {
      _data.files.add(
        MapEntry(
          'PhotoFile',
          MultipartFile.fromFileSync(
            photoFile.path,
            filename: photoFile.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    if (preferredLanguage != null) {
      _data.fields.add(MapEntry('PreferredLanguage', preferredLanguage));
    }
    final _options =
        _setStreamType<HttpResponse<SignUpUserWithEmailAndPasswordDto>>(
          Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'multipart/form-data',
              )
              .compose(
                _dio.options,
                '/api/v1/User',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late SignUpUserWithEmailAndPasswordDto _value;
    try {
      _value = await compute(
        deserializeSignUpUserWithEmailAndPasswordDto,
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
  Future<HttpResponse<UserDtoPaginatedResult>> getApiV1User({
    String? userTypeId,
    String? firstName,
    String? lastName,
    String? preferredLanguage,
    DateTime? createdFrom,
    DateTime? createdTo,
    DateTime? updatedFrom,
    DateTime? updatedTo,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'UserTypeId': userTypeId,
      r'FirstName': firstName,
      r'LastName': lastName,
      r'PreferredLanguage': preferredLanguage,
      r'CreatedFrom': await compute(serializeDateTime, createdFrom),
      r'CreatedTo': await compute(serializeDateTime, createdTo),
      r'UpdatedFrom': await compute(serializeDateTime, updatedFrom),
      r'UpdatedTo': await compute(serializeDateTime, updatedTo),
      r'SortBy': sortBy,
      r'SortDirection': sortDirection,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'Cursor': cursor,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<UserDtoPaginatedResult>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/User',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late UserDtoPaginatedResult _value;
    try {
      _value = await compute(deserializeUserDtoPaginatedResult, _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<void>> putApiV1UserPreferencesLanguage({
    UpdateLanguagePreferenceDto? body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(
      body == null
          ? <String, dynamic>{}
          : await compute(serializeUpdateLanguagePreferenceDto, body),
    );
    final _options = _setStreamType<HttpResponse<void>>(
      Options(method: 'PUT', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v1/User/preferences/language',
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
