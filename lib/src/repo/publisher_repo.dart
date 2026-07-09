// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class PublisherRepo {
  Future<ResultApi<PublisherUserDtoPaginatedResult>> getPublishers({
    String? publisherTypeId,
    String? clientUserId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<PublisherUserDto>> postPublishers({
    CreatePublisherUserDto? body,
  });
  Future<ResultApi<PublisherMemberDto>> postPublishersIdMembers({
    required String id,
    AddPublisherMemberDto? body,
  });
  Future<ResultApi<ListPublisherMembersResponseDto>> getPublishersIdMembers({
    required String id,
  });
  Future<ResultApi<Unit>> deletePublishersIdMembersClientUserId({
    required String id,
    required String clientUserId,
  });
  Future<ResultApi<PublisherUserDto>> putPublishersId({
    required String id,
    UpdatePublisherDto? body,
  });
  Future<ResultApi<PublisherUserDto>> getPublishersId({
    required String id,
  });
  Future<ResultApi<ListingDto>> getPublishersIdListingsListingId({
    required String id,
    required String listingId,
  });
  Future<ResultApi<ListingSummaryDtoPaginatedResult>> getPublishersIdListings({
    required String id,
    String? inmoCategoryId,
    String? inmoTypeId,
    String? administrativeDivisionId,
    String? offerType,
    String? offerStatus,
    double? minPrice,
    double? maxPrice,
    String? currencyId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
}

class PublisherRepoImpl extends BaseRepo implements PublisherRepo {
  PublisherRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<PublisherUserDtoPaginatedResult>> getPublishers({
    String? publisherTypeId,
    String? clientUserId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<PublisherUserDtoPaginatedResult>(
      apiCall: () => _api.publisher.getApiV1Publishers(
        publisherTypeId: publisherTypeId,
        clientUserId: clientUserId,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<PublisherUserDto>> postPublishers({
    CreatePublisherUserDto? body,
  }) {
    return executeApiCall<PublisherUserDto>(
      apiCall: () => _api.publisher.postApiV1Publishers(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<PublisherMemberDto>> postPublishersIdMembers({
    required String id,
    AddPublisherMemberDto? body,
  }) {
    return executeApiCall<PublisherMemberDto>(
      apiCall: () => _api.publisher.postApiV1PublishersIdMembers(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<ListPublisherMembersResponseDto>> getPublishersIdMembers({
    required String id,
  }) {
    return executeApiCall<ListPublisherMembersResponseDto>(
      apiCall: () => _api.publisher.getApiV1PublishersIdMembers(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deletePublishersIdMembersClientUserId({
    required String id,
    required String clientUserId,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.publisher.deleteApiV1PublishersIdMembersClientUserId(
        id: id,
        clientUserId: clientUserId,
      ),
    );
  }

  @override
  Future<ResultApi<PublisherUserDto>> putPublishersId({
    required String id,
    UpdatePublisherDto? body,
  }) {
    return executeApiCall<PublisherUserDto>(
      apiCall: () => _api.publisher.putApiV1PublishersId(
        id: id,
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<PublisherUserDto>> getPublishersId({
    required String id,
  }) {
    return executeApiCall<PublisherUserDto>(
      apiCall: () => _api.publisher.getApiV1PublishersId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<ListingDto>> getPublishersIdListingsListingId({
    required String id,
    required String listingId,
  }) {
    return executeApiCall<ListingDto>(
      apiCall: () => _api.publisher.getApiV1PublishersIdListingsListingId(
        id: id,
        listingId: listingId,
      ),
    );
  }

  @override
  Future<ResultApi<ListingSummaryDtoPaginatedResult>> getPublishersIdListings({
    required String id,
    String? inmoCategoryId,
    String? inmoTypeId,
    String? administrativeDivisionId,
    String? offerType,
    String? offerStatus,
    double? minPrice,
    double? maxPrice,
    String? currencyId,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<ListingSummaryDtoPaginatedResult>(
      apiCall: () => _api.publisher.getApiV1PublishersIdListings(
        id: id,
        inmoCategoryId: inmoCategoryId,
        inmoTypeId: inmoTypeId,
        administrativeDivisionId: administrativeDivisionId,
        offerType: offerType,
        offerStatus: offerStatus,
        minPrice: minPrice,
        maxPrice: maxPrice,
        currencyId: currencyId,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

}
