// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AuthRepo {
  Future<ResultApi<LoginResponseDto>> postAuthSessionsClientsEmail({
    LoginUserWithEmailDto? body,
  });
  Future<ResultApi<LoginResponseDto>> postAuthSessionsClientsGoogle({
    LoginClientWithGoogleDto? body,
  });
  Future<ResultApi<LoginResponseDto>> postAuthSessionsAdminsEmail({
    LoginUserWithEmailDto? body,
  });
  Future<ResultApi<RefreshTokenResponseDto>> postAuthSessionsRefresh({
    RefreshTokenDto? body,
  });
  Future<ResultApi<Unit>> deleteAuthSessionsDevices();
  Future<ResultApi<ListDevicesResponseDto>> getAuthSessionsDevices();
  Future<ResultApi<Unit>> deleteAuthSessionsDevicesDeviceId({
    required String deviceId,
  });
}

class AuthRepoImpl extends BaseRepo implements AuthRepo {
  AuthRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<LoginResponseDto>> postAuthSessionsClientsEmail({
    LoginUserWithEmailDto? body,
  }) {
    return executeApiCall<LoginResponseDto>(
      apiCall: () => _api.auth.postApiV1AuthSessionsClientsEmail(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<LoginResponseDto>> postAuthSessionsClientsGoogle({
    LoginClientWithGoogleDto? body,
  }) {
    return executeApiCall<LoginResponseDto>(
      apiCall: () => _api.auth.postApiV1AuthSessionsClientsGoogle(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<LoginResponseDto>> postAuthSessionsAdminsEmail({
    LoginUserWithEmailDto? body,
  }) {
    return executeApiCall<LoginResponseDto>(
      apiCall: () => _api.auth.postApiV1AuthSessionsAdminsEmail(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<RefreshTokenResponseDto>> postAuthSessionsRefresh({
    RefreshTokenDto? body,
  }) {
    return executeApiCall<RefreshTokenResponseDto>(
      apiCall: () => _api.auth.postApiV1AuthSessionsRefresh(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteAuthSessionsDevices() {
    return executeApiCall<Unit>(
      apiCall: () => _api.auth.deleteApiV1AuthSessionsDevices(),
    );
  }

  @override
  Future<ResultApi<ListDevicesResponseDto>> getAuthSessionsDevices() {
    return executeApiCall<ListDevicesResponseDto>(
      apiCall: () => _api.auth.getApiV1AuthSessionsDevices(),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteAuthSessionsDevicesDeviceId({
    required String deviceId,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.auth.deleteApiV1AuthSessionsDevicesDeviceId(
        deviceId: deviceId,
      ),
    );
  }

}
