// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class InquiryRepo {
  Future<ResultApi<SubmitInquiryResultDto>> postInquiries({
    SubmitInquiryDto? body,
  });
  Future<ResultApi<InquiryInboxDtoPaginatedResult>> getInquiriesInbox({
    List<String>? status,
    String? listingId,
    DateTime? from,
    DateTime? to,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<InquirySentDtoPaginatedResult>> getInquiriesSent({
    List<String>? status,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<InquiryDetailDto>> getInquiriesInboxId({
    required String id,
  });
  Future<ResultApi<UpdateInquiryStatusResultDto>> patchInquiriesInboxIdStatus({
    required String id,
    UpdateInquiryStatusDto? body,
  });
}

class InquiryRepoImpl extends BaseRepo implements InquiryRepo {
  InquiryRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<SubmitInquiryResultDto>> postInquiries({
    SubmitInquiryDto? body,
  }) {
    return executeApiCall<SubmitInquiryResultDto>(
      apiCall: () => _api.inquiry.postApiV1Inquiries(
        body: body,
      ),
    );
  }

  @override
  Future<ResultApi<InquiryInboxDtoPaginatedResult>> getInquiriesInbox({
    List<String>? status,
    String? listingId,
    DateTime? from,
    DateTime? to,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<InquiryInboxDtoPaginatedResult>(
      apiCall: () => _api.inquiry.getApiV1InquiriesInbox(
        status: status,
        listingId: listingId,
        from: from,
        to: to,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<InquirySentDtoPaginatedResult>> getInquiriesSent({
    List<String>? status,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<InquirySentDtoPaginatedResult>(
      apiCall: () => _api.inquiry.getApiV1InquiriesSent(
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
  Future<ResultApi<InquiryDetailDto>> getInquiriesInboxId({
    required String id,
  }) {
    return executeApiCall<InquiryDetailDto>(
      apiCall: () => _api.inquiry.getApiV1InquiriesInboxId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<UpdateInquiryStatusResultDto>> patchInquiriesInboxIdStatus({
    required String id,
    UpdateInquiryStatusDto? body,
  }) {
    return executeApiCall<UpdateInquiryStatusResultDto>(
      apiCall: () => _api.inquiry.patchApiV1InquiriesInboxIdStatus(
        id: id,
        body: body,
      ),
    );
  }

}
