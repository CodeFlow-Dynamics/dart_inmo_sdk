// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_consumer_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateConsumerProfileDto _$UpdateConsumerProfileDtoFromJson(
  Map<String, dynamic> json,
) => UpdateConsumerProfileDto(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  avatarMediaId: json['avatarMediaId'] as String?,
);

Map<String, dynamic> _$UpdateConsumerProfileDtoToJson(
  UpdateConsumerProfileDto instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'avatarMediaId': instance.avatarMediaId,
};
