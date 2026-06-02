// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class InmoTypeRepo {
  Future<ResultApi<InmoTypeDto>> postInmoType({
    AddInmoTypeDto? body,
  });
}

class InmoTypeRepoImpl extends BaseRepo implements InmoTypeRepo {
  InmoTypeRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<InmoTypeDto>> postInmoType({
    AddInmoTypeDto? body,
  }) {
    return executeApiCall<InmoTypeDto>(
      apiCall: () => _api.inmoType.postApiV1InmoType(
        body: body,
      ),
    );
  }

}
