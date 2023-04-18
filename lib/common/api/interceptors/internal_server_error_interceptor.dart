part of 'interceptors.dart';

class InternalServerErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      if (err.response!.statusCode != null &&
          err.response!.statusCode! >= 500 &&
          err.response!.statusCode! < 600) {
        return handler.reject(InternalServerError(err));
      }
    }
    super.onError(err, handler);
  }
}
