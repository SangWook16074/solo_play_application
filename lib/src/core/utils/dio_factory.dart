import 'package:dio/dio.dart';

class DioFactory {
  final String baseUrl;

  const DioFactory({required this.baseUrl});

  Dio create() {
    final dio = Dio(BaseOptions(baseUrl: baseUrl));

    return dio;
  }
}
