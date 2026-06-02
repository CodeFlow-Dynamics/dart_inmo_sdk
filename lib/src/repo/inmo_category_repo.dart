// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class InmoCategoryRepo {
  Future<ResultApi<InmoCategoryDto>> postInmoCategories({
    AddInmoCategoryDto? body,
  });
  Future<ResultApi<ListInmoCategoriesResponseDto>> getInmoCategories();
  Future<ResultApi<InmoCategoryDto>> putInmoCategoriesId({
    required String id,
    UpdateInmoCategoryDto? body,
  });
  Future<ResultApi<Unit>> deleteInmoCategoriesId({
    required String id,
  });
  Future<ResultApi<InmoCategoryDto>> getInmoCategoriesId({
    required String id,
  });
}

class InmoCategoryRepoImpl extends BaseRepo implements InmoCategoryRepo {
  InmoCategoryRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<InmoCategoryDto>> postInmoCategories({
    AddInmoCategoryDto? body,
  }) {
    return executeApiCall<InmoCategoryDto>(
      apiCall: () => _api.inmoCategory.postApiV1InmoCategories(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<ListInmoCategoriesResponseDto>> getInmoCategories() {
    return executeApiCall<ListInmoCategoriesResponseDto>(
      apiCall: () => _api.inmoCategory.getApiV1InmoCategories(),
    );
  }

  @override
  Future<ResultApi<InmoCategoryDto>> putInmoCategoriesId({
    required String id,
    UpdateInmoCategoryDto? body,
  }) {
    return executeApiCall<InmoCategoryDto>(
      apiCall: () => _api.inmoCategory.putApiV1InmoCategoriesId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteInmoCategoriesId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.inmoCategory.deleteApiV1InmoCategoriesId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<InmoCategoryDto>> getInmoCategoriesId({
    required String id,
  }) {
    return executeApiCall<InmoCategoryDto>(
      apiCall: () => _api.inmoCategory.getApiV1InmoCategoriesId(
        id: id,
      ),
    );
  }

}
