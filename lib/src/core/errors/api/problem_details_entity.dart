import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:inmo_api_sdk/inmo_api_sdk.dart';

part 'problem_details_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class ProblemDetailsEntity extends ProblemDetails with EquatableMixin {
  final String entity;

  const ProblemDetailsEntity({
    required this.entity,
    required super.type,
    required super.title,
    required super.status,
    required super.detail,
    required super.instance,
  });

  @override
  List<Object?> get props => [title, status, detail, instance, entity];

  factory ProblemDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProblemDetailsEntityToJson(this);
}
