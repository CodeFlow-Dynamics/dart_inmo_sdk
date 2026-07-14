// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class PropertyRepo {
  Future<ResultApi<PropertyDtoPaginatedResult>> getProperties({
    String? ownerId,
    String? propertyCategory,
    String? propertyType,
    String? administrativeDivisionId,
    String? status,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<PropertyDto>> postProperties({
    CreatePropertyDto? body,
  });
  Future<ResultApi<PropertyDto>> getPropertiesId({
    required String id,
  });
  Future<ResultApi<PropertyDto>> putPropertiesId({
    required String id,
    UpdatePropertyDto? body,
  });
  Future<ResultApi<PropertyDto>> putPropertiesIdLocation({
    required String id,
    SetPropertyLocationDto? body,
  });
  Future<ResultApi<List<PropertyAmenityDto>>> putPropertiesIdAmenities({
    required String id,
    SetPropertyAmenitiesDto? body,
  });
  Future<ResultApi<PropertyDto>> putPropertiesIdAttributes({
    required String id,
    SetPropertyAttributesDto? body,
  });
  Future<ResultApi<PropertyDto>> postPropertiesIdUnits({
    required String id,
    AddPropertyUnitDto? body,
  });
}

class PropertyRepoImpl extends BaseRepo implements PropertyRepo {
  PropertyRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<PropertyDtoPaginatedResult>> getProperties({
    String? ownerId,
    String? propertyCategory,
    String? propertyType,
    String? administrativeDivisionId,
    String? status,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<PropertyDtoPaginatedResult>(
      apiCall: () => _api.property.getApiV1Properties(
        ownerId: ownerId,
        propertyCategory: propertyCategory,
        propertyType: propertyType,
        administrativeDivisionId: administrativeDivisionId,
        status: status,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<PropertyDto>> postProperties({
    CreatePropertyDto? body,
  }) {
    return executeApiCall<PropertyDto>(
      apiCall: () => _api.property.postApiV1Properties(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<PropertyDto>> getPropertiesId({
    required String id,
  }) {
    return executeApiCall<PropertyDto>(
      apiCall: () => _api.property.getApiV1PropertiesId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<PropertyDto>> putPropertiesId({
    required String id,
    UpdatePropertyDto? body,
  }) {
    return executeApiCall<PropertyDto>(
      apiCall: () => _api.property.putApiV1PropertiesId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<PropertyDto>> putPropertiesIdLocation({
    required String id,
    SetPropertyLocationDto? body,
  }) {
    return executeApiCall<PropertyDto>(
      apiCall: () => _api.property.putApiV1PropertiesIdLocation(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<List<PropertyAmenityDto>>> putPropertiesIdAmenities({
    required String id,
    SetPropertyAmenitiesDto? body,
  }) {
    return executeApiCall<List<PropertyAmenityDto>>(
      apiCall: () => _api.property.putApiV1PropertiesIdAmenities(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<PropertyDto>> putPropertiesIdAttributes({
    required String id,
    SetPropertyAttributesDto? body,
  }) {
    return executeApiCall<PropertyDto>(
      apiCall: () => _api.property.putApiV1PropertiesIdAttributes(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<PropertyDto>> postPropertiesIdUnits({
    required String id,
    AddPropertyUnitDto? body,
  }) {
    return executeApiCall<PropertyDto>(
      apiCall: () => _api.property.postApiV1PropertiesIdUnits(
        id: id,
        body: body,
      ),
    );
  }

}
