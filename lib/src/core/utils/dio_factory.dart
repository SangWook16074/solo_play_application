import 'package:dio/dio.dart';
import 'package:solo_play_application/src/core/utils/interceptor.dart';

class DioFactory {
  final String baseUrl;

  const DioFactory({required this.baseUrl});

  Dio create() {
    final dio = Dio(BaseOptions(baseUrl: baseUrl))
      ..interceptors.add(LoggingInterceptor());

    return dio;
  }
}
