import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/locals/jwt_storage.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/models/check_email_duplicate.dart';
import 'package:solo_play_application/src/features/auth/data/models/jwt.dart';
import 'package:solo_play_application/src/features/auth/data/models/login.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/login_info.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDatasource _authDatasource;
  final JwtStorage _jwtStorage;

  AuthRepositoryImpl({
    required AuthDatasource authDatasource,
    required JwtStorage jwtStorage,
  })  : _authDatasource = authDatasource,
        _jwtStorage = jwtStorage;

  /// 이메일 중복 검증
  ///
  ///
  @override
  Future<Result<String>> checkEmailDuplicate(String email) {
    return _authDatasource
        .checkEmailDuplicate(CheckEmailDuplicateRequest(email: email));
  }

  /// 로그인
  ///
  ///
  @override
  Future<Result<void>> login(LoginInfo login) async {
    final result = await _authDatasource
        .login(LoginRequest(email: login.email, password: login.password));

    if (result is Success<Jwt>) {
      final jwt = result.value;

      await _jwtStorage.saveAccessToken(jwt.accessToken);
      await _jwtStorage.saveRefreshToken(jwt.refreshToken);

      return Success(null);
    } else {
      return Failure((result as Failure).message);
    }
  }

  /// 저장된 토큰 정보 불러오기
  ///
  ///
  @override
  Future<String?> getAccessToken() {
    return _jwtStorage.readAccessToken();
  }
}
