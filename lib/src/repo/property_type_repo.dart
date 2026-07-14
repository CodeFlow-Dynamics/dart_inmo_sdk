// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class PropertyTypeRepo {
  Future<ResultApi<List<PropertyTypeDto>>> getPropertyTypes();
  Future<ResultApi<PropertyTypeDto>> getPropertyTypesId({
    required String id,
  });
}

class PropertyTypeRepoImpl extends BaseRepo implements PropertyTypeRepo {
  PropertyTypeRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<List<PropertyTypeDto>>> getPropertyTypes() {
    return executeApiCall<List<PropertyTypeDto>>(
      apiCall: () => _api.propertyType.getApiV1PropertyTypes(),
    );
  }

  @override
  Future<ResultApi<PropertyTypeDto>> getPropertyTypesId({
    required String id,
  }) {
    return executeApiCall<PropertyTypeDto>(
      apiCall: () => _api.propertyType.getApiV1PropertyTypesId(
        id: id,
      ),
    );
  }

}
