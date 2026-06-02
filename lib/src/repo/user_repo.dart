// GENERATED CODE - DO NOT MODIFY BY HAND
// Run: dart run scripts/generate_api_repos.dart

import 'dart:io' show File;

import 'package:inmo_api_sdk/src/api/export.dart';
import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/src/core/base_repo.dart';
import 'package:inmo_api_sdk/src/core/result.dart';

abstract class UserRepo {
  Future<ResultApi<SignUpUserWithEmailAndPasswordDto>> postUser({
    String? email,
    String? password,
    String? repeatPassword,
    String? firstName,
    String? lastName,
    String? countryCode,
    String? phoneNumber,
    File? photoFile,
    String? preferredLanguage,
  });
  Future<ResultApi<UserDtoPaginatedResult>> getUser({
    String? userTypeId,
    String? firstName,
    String? lastName,
    String? preferredLanguage,
    DateTime? createdFrom,
    DateTime? createdTo,
    DateTime? updatedFrom,
    DateTime? updatedTo,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  });
  Future<ResultApi<Unit>> putUserPreferencesLanguage({
    UpdateLanguagePreferenceDto? body,
  });
}

class UserRepoImpl extends BaseRepo implements UserRepo {
  UserRepoImpl(this._api);

  final InmoApi _api;

  @override
  Future<ResultApi<SignUpUserWithEmailAndPasswordDto>> postUser({
    String? email,
    String? password,
    String? repeatPassword,
    String? firstName,
    String? lastName,
    String? countryCode,
    String? phoneNumber,
    File? photoFile,
    String? preferredLanguage,
  }) {
    return executeApiCall<SignUpUserWithEmailAndPasswordDto>(
      apiCall: () => _api.user.postApiV1User(
        email: email,
        password: password,
        repeatPassword: repeatPassword,
        firstName: firstName,
        lastName: lastName,
        countryCode: countryCode,
        phoneNumber: phoneNumber,
        photoFile: photoFile,
        preferredLanguage: preferredLanguage,
      ),
    );
  }

  @override
  Future<ResultApi<UserDtoPaginatedResult>> getUser({
    String? userTypeId,
    String? firstName,
    String? lastName,
    String? preferredLanguage,
    DateTime? createdFrom,
    DateTime? createdTo,
    DateTime? updatedFrom,
    DateTime? updatedTo,
    String? sortBy,
    String? sortDirection,
    int? pageNumber,
    int? pageSize,
    String? cursor,
  }) {
    return executeApiCall<UserDtoPaginatedResult>(
      apiCall: () => _api.user.getApiV1User(
        userTypeId: userTypeId,
        firstName: firstName,
        lastName: lastName,
        preferredLanguage: preferredLanguage,
        createdFrom: createdFrom,
        createdTo: createdTo,
        updatedFrom: updatedFrom,
        updatedTo: updatedTo,
        sortBy: sortBy,
        sortDirection: sortDirection,
        pageNumber: pageNumber,
        pageSize: pageSize,
        cursor: cursor,
      ),
    );
  }

  @override
  Future<ResultApi<Unit>> putUserPreferencesLanguage({
    UpdateLanguagePreferenceDto? body,
  }) {
    return executeApiCall<Unit>(
      apiCall: () => _api.user.putApiV1UserPreferencesLanguage(
        body: body,
      ),
    );
  }

}
