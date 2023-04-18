part of 'interceptors.dart';

class UnauthorizedErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401 ||
        err.response?.statusCode == 403 ||
        err.response?.statusCode == 419) {
      return handler.reject(UnauthorizedError(err));
    }
    super.onError(err, handler);
  }
}
