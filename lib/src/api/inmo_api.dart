// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';

import 'admin/admin_client.dart';
import 'administrative_division/administrative_division_client.dart';
import 'administrative_level/administrative_level_client.dart';
import 'amenity/amenity_client.dart';
import 'auth/auth_client.dart';
import 'auth_security/auth_security_client.dart';
import 'country/country_client.dart';
import 'currency/currency_client.dart';
import 'document/document_client.dart';
import 'favourites/favourites_client.dart';
import 'favourite_search/favourite_search_client.dart';
import 'identification/identification_client.dart';
import 'inmo_category/inmo_category_client.dart';
import 'inmo_type/inmo_type_client.dart';
import 'inquiry/inquiry_client.dart';
import 'listing/listing_client.dart';
import 'listing_offer/listing_offer_client.dart';
import 'master/master_client.dart';
import 'password/password_client.dart';
import 'phone/phone_client.dart';
import 'publisher/publisher_client.dart';
import 'search/search_client.dart';
import 'token/token_client.dart';
import 'user/user_client.dart';
import 'user_media/user_media_client.dart';
import 'verification_submission/verification_submission_client.dart';

/// Inmo API `v1.0`
class InmoApi {
  InmoApi(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0';

  AdminClient? _admin;
  AdministrativeDivisionClient? _administrativeDivision;
  AdministrativeLevelClient? _administrativeLevel;
  AmenityClient? _amenity;
  AuthClient? _auth;
  AuthSecurityClient? _authSecurity;
  CountryClient? _country;
  CurrencyClient? _currency;
  DocumentClient? _document;
  FavouritesClient? _favourites;
  FavouriteSearchClient? _favouriteSearch;
  IdentificationClient? _identification;
  InmoCategoryClient? _inmoCategory;
  InmoTypeClient? _inmoType;
  InquiryClient? _inquiry;
  ListingClient? _listing;
  ListingOfferClient? _listingOffer;
  MasterClient? _master;
  PasswordClient? _password;
  PhoneClient? _phone;
  PublisherClient? _publisher;
  SearchClient? _search;
  TokenClient? _token;
  UserClient? _user;
  UserMediaClient? _userMedia;
  VerificationSubmissionClient? _verificationSubmission;

  AdminClient get admin => _admin ??= AdminClient(_dio, baseUrl: _baseUrl);

  AdministrativeDivisionClient get administrativeDivision => _administrativeDivision ??= AdministrativeDivisionClient(_dio, baseUrl: _baseUrl);

  AdministrativeLevelClient get administrativeLevel => _administrativeLevel ??= AdministrativeLevelClient(_dio, baseUrl: _baseUrl);

  AmenityClient get amenity => _amenity ??= AmenityClient(_dio, baseUrl: _baseUrl);

  AuthClient get auth => _auth ??= AuthClient(_dio, baseUrl: _baseUrl);

  AuthSecurityClient get authSecurity => _authSecurity ??= AuthSecurityClient(_dio, baseUrl: _baseUrl);

  CountryClient get country => _country ??= CountryClient(_dio, baseUrl: _baseUrl);

  CurrencyClient get currency => _currency ??= CurrencyClient(_dio, baseUrl: _baseUrl);

  DocumentClient get document => _document ??= DocumentClient(_dio, baseUrl: _baseUrl);

  FavouritesClient get favourites => _favourites ??= FavouritesClient(_dio, baseUrl: _baseUrl);

  FavouriteSearchClient get favouriteSearch => _favouriteSearch ??= FavouriteSearchClient(_dio, baseUrl: _baseUrl);

  IdentificationClient get identification => _identification ??= IdentificationClient(_dio, baseUrl: _baseUrl);

  InmoCategoryClient get inmoCategory => _inmoCategory ??= InmoCategoryClient(_dio, baseUrl: _baseUrl);

  InmoTypeClient get inmoType => _inmoType ??= InmoTypeClient(_dio, baseUrl: _baseUrl);

  InquiryClient get inquiry => _inquiry ??= InquiryClient(_dio, baseUrl: _baseUrl);

  ListingClient get listing => _listing ??= ListingClient(_dio, baseUrl: _baseUrl);

  ListingOfferClient get listingOffer => _listingOffer ??= ListingOfferClient(_dio, baseUrl: _baseUrl);

  MasterClient get master => _master ??= MasterClient(_dio, baseUrl: _baseUrl);

  PasswordClient get password => _password ??= PasswordClient(_dio, baseUrl: _baseUrl);

  PhoneClient get phone => _phone ??= PhoneClient(_dio, baseUrl: _baseUrl);

  PublisherClient get publisher => _publisher ??= PublisherClient(_dio, baseUrl: _baseUrl);

  SearchClient get search => _search ??= SearchClient(_dio, baseUrl: _baseUrl);

  TokenClient get token => _token ??= TokenClient(_dio, baseUrl: _baseUrl);

  UserClient get user => _user ??= UserClient(_dio, baseUrl: _baseUrl);

  UserMediaClient get userMedia => _userMedia ??= UserMediaClient(_dio, baseUrl: _baseUrl);

  VerificationSubmissionClient get verificationSubmission => _verificationSubmission ??= VerificationSubmissionClient(_dio, baseUrl: _baseUrl);
}
