import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:inmo_api_sdk/inmo_api_sdk.dart';

part 'problem_details_field.g.dart';

@JsonSerializable(explicitToJson: true)
class ProblemDetailsField extends ProblemDetails with EquatableMixin {
  final List<String> fields;

  // ignore: use_super_parameters
  const ProblemDetailsField({
    required this.fields,
    required String? type,
    required String? title,
    required int? status,
    required String? detail,
    required String? instance,
  }) : super(
          type: type,
          title: title,
          status: status,
          detail: detail,
          instance: instance,
        );

  @override
  List<Object?> get props => [title, status, detail, instance, fields];

  factory ProblemDetailsField.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFieldFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProblemDetailsFieldToJson(this);
}
