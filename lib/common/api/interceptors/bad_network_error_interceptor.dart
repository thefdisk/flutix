part of 'interceptors.dart';

class BadNetworkErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response == null ||
        err.type == DioErrorType.connectionTimeout ||
        err.type == DioErrorType.connectionError) {
      handler.reject(BadNetworkError(err));
    }
    super.onError(err, handler);
  }
}
