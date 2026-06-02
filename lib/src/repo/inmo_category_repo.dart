// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class InmoCategoryRepo {
  Future<ResultApi<InmoCategoryDto>> postInmoCategory({
    AddInmoCategoryDto? body,
  });
}

class InmoCategoryRepoImpl extends BaseRepo implements InmoCategoryRepo {
  InmoCategoryRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<InmoCategoryDto>> postInmoCategory({
    AddInmoCategoryDto? body,
  }) {
    return executeApiCall<InmoCategoryDto>(
      apiCall: () => _api.inmoCategory.postApiV1InmoCategory(
        body: body,
      ),
    );
  }

}
