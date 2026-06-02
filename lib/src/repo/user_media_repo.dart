// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'dart:io' show File;

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class UserMediaRepo {
  Future<ResultApi<UserMediaDto>> postUserMedia({
    File? photoFile,
    String? userId,
    String? mediaTypeId,
  });
}

class UserMediaRepoImpl extends BaseRepo implements UserMediaRepo {
  UserMediaRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<UserMediaDto>> postUserMedia({
    File? photoFile,
    String? userId,
    String? mediaTypeId,
  }) {
    return executeApiCall<UserMediaDto>(
      apiCall: () => _api.userMedia.postApiV1UserMedia(
        photoFile: photoFile,
        userId: userId,
        mediaTypeId: mediaTypeId,
      ),
    );
  }

}
