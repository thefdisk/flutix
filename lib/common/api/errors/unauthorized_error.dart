part of 'errors.dart';

class UnauthorizedError extends DioError {
  final DioError dioError;

  UnauthorizedError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          message: dioError.message,
          response: dioError.response,
          stackTrace: dioError.stackTrace,
          type: dioError.type,
        );
}
