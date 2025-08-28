import 'package:dio/dio.dart';
import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/api_path.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate.dart';

class AuthDatasourceImpl extends AuthDatasource {
  final Dio _dio;

  AuthDatasourceImpl({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<Result<String>> checkEmailDuplicate(CheckEmailDuplicate request) {
    return _dio.post(AuthApiPath.checkEmailDuplicate).then((response) {
      if (response.statusCode == 200) {
        return Success(response.data["data"] as String);
      } else {
        return Failure(response.data["message"] as String);
      }
    });
  }
}
