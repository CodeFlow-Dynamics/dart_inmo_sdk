// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class PropertyCategoryRepo {
  Future<ResultApi<List<PropertyCategoryDto>>> getPropertyCategories();
  Future<ResultApi<PropertyCategoryDto>> getPropertyCategoriesId({
    required String id,
  });
}

class PropertyCategoryRepoImpl extends BaseRepo implements PropertyCategoryRepo {
  PropertyCategoryRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<List<PropertyCategoryDto>>> getPropertyCategories() {
    return executeApiCall<List<PropertyCategoryDto>>(
      apiCall: () => _api.propertyCategory.getApiV1PropertyCategories(),
    );
  }

  @override
  Future<ResultApi<PropertyCategoryDto>> getPropertyCategoriesId({
    required String id,
  }) {
    return executeApiCall<PropertyCategoryDto>(
      apiCall: () => _api.propertyCategory.getApiV1PropertyCategoriesId(
        id: id,
      ),
    );
  }

}
