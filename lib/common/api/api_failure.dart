import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const ApiFailure._();
  const factory ApiFailure.connectionError() = _ConnectionError;
  const factory ApiFailure.internalServerError() = _InternalServerError;
  const factory ApiFailure.unauthorized() = _Unauthorized;
  const factory ApiFailure.badRequest() = _BadRequest;
  const factory ApiFailure.notFound() = _NotFound;
  const factory ApiFailure.serverError({
    required int statusCode,
    required Object errorMessage,
  }) = _ServerError;
  const factory ApiFailure.unexpectedError({
    Object? errorMessage,
    StackTrace? stackTrace,
  }) = _UnexpectedError;
}
