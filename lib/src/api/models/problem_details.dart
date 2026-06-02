// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'problem_details.g.dart';

@JsonSerializable()
class ProblemDetails {
  const ProblemDetails({
    required this.type,
    required this.title,
    required this.status,
    required this.detail,
    required this.instance,
  });
  
  factory ProblemDetails.fromJson(Map<String, Object?> json) => _$ProblemDetailsFromJson(json);
  
  final String? type;
  final String? title;
  final int? status;
  final String? detail;
  final String? instance;

  Map<String, Object?> toJson() => _$ProblemDetailsToJson(this);
}

// Flutter compute serialization functions for ProblemDetails
FutureOr<ProblemDetails> deserializeProblemDetails(Map<String, dynamic> json) =>
    ProblemDetails.fromJson(json);

FutureOr<List<ProblemDetails>> deserializeProblemDetailsList(List<Map<String, dynamic>> json) =>
    json.map((e) => ProblemDetails.fromJson(e)).toList();

FutureOr<Map<String, dynamic>> serializeProblemDetails(ProblemDetails? object) =>
    object?.toJson() ?? <String, dynamic>{};

FutureOr<List<Map<String, dynamic>>> serializeProblemDetailsList(List<ProblemDetails>? objects) =>
    objects?.map((e) => e.toJson()).toList() ?? [];
