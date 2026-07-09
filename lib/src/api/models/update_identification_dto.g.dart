// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_identification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateIdentificationDto _$UpdateIdentificationDtoFromJson(
  Map<String, dynamic> json,
) => UpdateIdentificationDto(
  idNumber: json['idNumber'] as String,
  validationPattern: json['validationPattern'] as String,
  dateOfBirth: json['dateOfBirth'] as String,
  expiryDate: json['expiryDate'] as String,
  obverseMediaFileId: json['obverseMediaFileId'] as String,
  reverseMediaFileId: json['reverseMediaFileId'] as String?,
);

Map<String, dynamic> _$UpdateIdentificationDtoToJson(
  UpdateIdentificationDto instance,
) => <String, dynamic>{
  'idNumber': instance.idNumber,
  'validationPattern': instance.validationPattern,
  'dateOfBirth': instance.dateOfBirth,
  'expiryDate': instance.expiryDate,
  'obverseMediaFileId': instance.obverseMediaFileId,
  'reverseMediaFileId': instance.reverseMediaFileId,
};
