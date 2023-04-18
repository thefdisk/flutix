part of 'errors.dart';

class BadNetworkError extends DioError {
  final DioError dioError;

  BadNetworkError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          message: dioError.message,
          response: dioError.response,
          stackTrace: dioError.stackTrace,
          type: dioError.type,
        );
}
