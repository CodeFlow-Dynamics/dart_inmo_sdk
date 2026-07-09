// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'dart:io' show File;

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class MediaRepo {
  Future<ResultApi<MediaFileDto>> postMediaUpload({
    String? ownerType,
    String? ownerId,
    String? mediaType,
    File? file,
  });
  Future<ResultApi<Unit>> deleteMediaId({
    required String id,
  });
  Future<ResultApi<MediaFileDto>> getMediaId({
    required String id,
  });
  Future<ResultApi<SignedUrlDto>> getMediaIdSignedUrl({
    required String id,
  });
  Future<ResultApi<Unit>> getMediaIdEvents({
    required String id,
  });
}

class MediaRepoImpl extends BaseRepo implements MediaRepo {
  MediaRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<MediaFileDto>> postMediaUpload({
    String? ownerType,
    String? ownerId,
    String? mediaType,
    File? file,
  }) {
    return executeApiCall<MediaFileDto>(
      apiCall: () => _api.media.postApiV1MediaUpload(
        ownerType: ownerType,
        ownerId: ownerId,
        mediaType: mediaType,
        file: file,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> deleteMediaId({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.media.deleteApiV1MediaId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<MediaFileDto>> getMediaId({
    required String id,
  }) {
    return executeApiCall<MediaFileDto>(
      apiCall: () => _api.media.getApiV1MediaId(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<SignedUrlDto>> getMediaIdSignedUrl({
    required String id,
  }) {
    return executeApiCall<SignedUrlDto>(
      apiCall: () => _api.media.getApiV1MediaIdSignedUrl(
        id: id,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> getMediaIdEvents({
    required String id,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.media.getApiV1MediaIdEvents(
        id: id,
      ),
    );
  }

}
