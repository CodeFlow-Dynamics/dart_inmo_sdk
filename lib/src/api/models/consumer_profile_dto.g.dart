// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsumerProfileDto _$ConsumerProfileDtoFromJson(Map<String, dynamic> json) =>
    ConsumerProfileDto(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      language: json['language'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      type: json['type'] as String,
      phoneCount: (json['phoneCount'] as num).toInt(),
      identificationStatus: json['identificationStatus'] as String?,
      publisherMemberships: (json['publisherMemberships'] as List<dynamic>)
          .map(
            (e) => PublisherMembershipSummaryDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ConsumerProfileDtoToJson(ConsumerProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'language': instance.language,
      'avatarUrl': instance.avatarUrl,
      'type': instance.type,
      'phoneCount': instance.phoneCount,
      'identificationStatus': instance.identificationStatus,
      'publisherMemberships': instance.publisherMemberships,
      'createdAt': instance.createdAt,
    };
