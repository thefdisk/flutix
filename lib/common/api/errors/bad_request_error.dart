part of 'errors.dart';

class BadRequestError extends DioError {
  final DioError dioError;

  BadRequestError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          message: dioError.message,
          response: dioError.response,
          stackTrace: dioError.stackTrace,
          type: dioError.type,
        );
}
