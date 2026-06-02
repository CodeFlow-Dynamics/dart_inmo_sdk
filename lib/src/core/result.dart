import 'package:fpdart/fpdart.dart';
import 'package:inmo_api_sdk/inmo_api_sdk.dart';

typedef ResultApi<T> = Either<List<ProblemDetails>, T>;

typedef Result<T> = Either<List<BaseError>, T>;