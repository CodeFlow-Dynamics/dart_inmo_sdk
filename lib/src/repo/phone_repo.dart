// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class PhoneRepo {
  Future<ResultApi<PhoneDto>> postPhone({
    AddPhoneDto? body,
  });
}

class PhoneRepoImpl extends BaseRepo implements PhoneRepo {
  PhoneRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<PhoneDto>> postPhone({
    AddPhoneDto? body,
  }) {
    return executeApiCall<PhoneDto>(
      apiCall: () => _api.phone.postApiV1Phone(
        body: body,
      ),
    );
  }

}
