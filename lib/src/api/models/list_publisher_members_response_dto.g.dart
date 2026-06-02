// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_publisher_members_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPublisherMembersResponseDto _$ListPublisherMembersResponseDtoFromJson(
  Map<String, dynamic> json,
) => ListPublisherMembersResponseDto(
  members: (json['members'] as List<dynamic>)
      .map((e) => PublisherMemberDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListPublisherMembersResponseDtoToJson(
  ListPublisherMembersResponseDto instance,
) => <String, dynamic>{'members': instance.members};
