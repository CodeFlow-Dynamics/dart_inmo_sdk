import 'package:dio/dio.dart';
import 'package:inmo_api_sdk/src/interceptors/auth_token_provider.dart';

class JwtInterceptor extends Interceptor {
  final AuthTokenProvider _tokenProvider;

  JwtInterceptor({required AuthTokenProvider tokenProvider})
    : _tokenProvider = tokenProvider;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Refresh uses only the body refresh token; omit Bearer so an expired access token cannot break refresh.
    if (options.path.contains('/Auth/refresh')) {
      handler.next(options);
      return;
    }
    final token = await _tokenProvider.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
