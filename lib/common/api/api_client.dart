import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../env.dart';
import 'api_failure.dart';
import 'errors/errors.dart';
import 'interceptors/interceptors.dart';

@lazySingleton
class ApiClient {
  final Dio _dio;
  final Env _env;

  ApiClient(this._dio, this._env) {
    _dio.options.baseUrl = _env.baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.interceptors.add(BadNetworkErrorInterceptor());
    _dio.interceptors.add(BadRequestErrorInterceptor());
    _dio.interceptors.add(InternalServerErrorInterceptor());
    _dio.interceptors.add(NotFoundErrorInterceptor());
    _dio.interceptors.add(UnauthorizedErrorInterceptor());

    if (kDebugMode) {
      _dio.interceptors.add(PrettyDioLogger());
    }
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.get(
        path,
        options: Options(
          headers: headers,
          validateStatus: validateStatus,
          followRedirects: followRedirects,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on BadNetworkError {
      throw const ApiFailure.connectionError();
    } on BadRequestError {
      throw const ApiFailure.badRequest();
    } on NotFoundError {
      throw const ApiFailure.notFound();
    } on DioError catch (e) {
      var errorMessage =
          e.response?.data['message'] ?? e.response?.statusMessage ?? e.error;

      throw ApiFailure.serverError(
        statusCode: e.response?.statusCode ?? 0,
        errorMessage: errorMessage,
      );
    } catch (e, s) {
      throw ApiFailure.unexpectedError(
        errorMessage: e,
        stackTrace: s,
      );
    }
  }
}
