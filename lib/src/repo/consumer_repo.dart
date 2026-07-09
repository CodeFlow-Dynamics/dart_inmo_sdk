// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class ConsumerRepo {
  Future<ResultApi<SignUpUserWithEmailDto>> postConsumerSignUp({
    SignUpConsumerDto? body,
  });
  Future<ResultApi<ConsumerProfileDto>> getConsumerProfile();
  Future<ResultApi<ConsumerProfileDto>> putConsumerProfile({
    UpdateConsumerProfileDto? body,
  });
}

class ConsumerRepoImpl extends BaseRepo implements ConsumerRepo {
  ConsumerRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<SignUpUserWithEmailDto>> postConsumerSignUp({
    SignUpConsumerDto? body,
  }) {
    return executeApiCall<SignUpUserWithEmailDto>(
      apiCall: () => _api.consumer.postApiV1ConsumerSignUp(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<ConsumerProfileDto>> getConsumerProfile() {
    return executeApiCall<ConsumerProfileDto>(
      apiCall: () => _api.consumer.getApiV1ConsumerProfile(),
    );
  }

  @override
  Future<ResultApi<ConsumerProfileDto>> putConsumerProfile({
    UpdateConsumerProfileDto? body,
  }) {
    return executeApiCall<ConsumerProfileDto>(
      apiCall: () => _api.consumer.putApiV1ConsumerProfile(
        body: body,
      ),
    );
  }

}
