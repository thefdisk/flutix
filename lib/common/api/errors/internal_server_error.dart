part of 'errors.dart';

class InternalServerError extends DioError {
  final DioError dioError;

  InternalServerError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          message: dioError.message,
          response: dioError.response,
          stackTrace: dioError.stackTrace,
          type: dioError.type,
        );
}
