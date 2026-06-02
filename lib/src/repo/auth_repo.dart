// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AuthRepo {
  Future<ResultApi<LoginResponseDto>> postAuthLoginEmail({
    LoginUserWithEmailAndPasswordDto? body,
  });
  Future<ResultApi<LoginResponseDto>> postAuthLoginGoogleIdToken({
    required String idToken,
    String? deviceName,
  });
  Future<ResultApi<RefreshTokenResponseDto>> postAuthRefresh({
    RefreshTokenDto? body,
  });
  Future<ResultApi<Unit>> postAuthLogout();
  Future<ResultApi<Unit>> postAuthLogoutDeviceId({
    required String deviceId,
  });
  Future<ResultApi<Unit>> postAuthLogoutAll();
  Future<ResultApi<ListDevicesResponseDto>> getAuthDevices();
}

class AuthRepoImpl extends BaseRepo implements AuthRepo {
  AuthRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<LoginResponseDto>> postAuthLoginEmail({
    LoginUserWithEmailAndPasswordDto? body,
  }) {
    return executeApiCall<LoginResponseDto>(
      apiCall: () => _api.auth.postApiV1AuthLoginEmail(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<LoginResponseDto>> postAuthLoginGoogleIdToken({
    required String idToken,
    String? deviceName,
  }) {
    return executeApiCall<LoginResponseDto>(
      apiCall: () => _api.auth.postApiV1AuthLoginGoogleIdToken(
        idToken: idToken,
        deviceName: deviceName,
      ),
    );
  }

  @override
  Future<ResultApi<RefreshTokenResponseDto>> postAuthRefresh({
    RefreshTokenDto? body,
  }) {
    return executeApiCall<RefreshTokenResponseDto>(
      apiCall: () => _api.auth.postApiV1AuthRefresh(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> postAuthLogout() {
    return executeApiCall<Unit>(
      apiCall: () => _api.auth.postApiV1AuthLogout(),
    );
  }

  @override
  Future<ResultApi<Unit>> postAuthLogoutDeviceId({
    required String deviceId,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.auth.postApiV1AuthLogoutDeviceId(
        deviceId: deviceId,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> postAuthLogoutAll() {
    return executeApiCall<Unit>(
      apiCall: () => _api.auth.postApiV1AuthLogoutAll(),
    );
  }

  @override
  Future<ResultApi<ListDevicesResponseDto>> getAuthDevices() {
    return executeApiCall<ListDevicesResponseDto>(
      apiCall: () => _api.auth.getApiV1AuthDevices(),
    );
  }

}
