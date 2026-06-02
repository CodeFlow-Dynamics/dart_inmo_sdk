// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class AmenityRepo {
  Future<ResultApi<List<AmenityCategoryDto>>> getAmenities();
}

class AmenityRepoImpl extends BaseRepo implements AmenityRepo {
  AmenityRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<List<AmenityCategoryDto>>> getAmenities() {
    return executeApiCall<List<AmenityCategoryDto>>(
      apiCall: () => _api.amenity.getApiV1Amenities(),
    );
  }

}
