part of 'interceptors.dart';

class BadRequestErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 400 || err.response?.statusCode == 422) {
      return handler.reject(BadRequestError(err));
    }
    super.onError(err, handler);
  }
}
