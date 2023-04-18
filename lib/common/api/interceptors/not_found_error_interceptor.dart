part of 'interceptors.dart';

class NotFoundErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 404) {
      return handler.reject(NotFoundError(err));
    }
    super.onError(err, handler);
  }
}
