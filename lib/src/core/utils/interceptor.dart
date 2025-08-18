import 'dart:developer';

import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log("[REQUEST][${options.method}] => PATH: ${options.path}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("[RESPONSE][${response.requestOptions.method}] => PATH: ${response.requestOptions.path}");
    log("[RESPONSE][${response.requestOptions.method}] => STATUSCODE: ${response.statusCode}");
    log("[RESPONSE][${response.requestOptions.method}] => DATA: ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}
