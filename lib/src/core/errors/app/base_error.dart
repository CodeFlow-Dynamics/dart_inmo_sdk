import 'package:equatable/equatable.dart';
import 'package:inmo_api_sdk/src/core/enums/error_type.dart';

abstract class BaseError extends Equatable {
  final String title;
  final String message;
  final ErrorType type;

  const BaseError({
    required this.title,
    required this.message,
    required this.type,
  });

  @override
  List<Object?> get props => [title];
}
