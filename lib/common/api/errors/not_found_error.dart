part of 'errors.dart';

class NotFoundError extends DioError {
  final DioError dioError;

  NotFoundError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          message: dioError.message,
          response: dioError.response,
          stackTrace: dioError.stackTrace,
          type: dioError.type,
        );
}
