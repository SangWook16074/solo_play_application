import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate.dart';
import 'package:solo_play_application/src/features/auth/data/models/sign_in_dto.dart';
import 'package:solo_play_application/src/features/auth/data/models/sign_up_dto.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDatasource _authDatasource;

  AuthRepositoryImpl({
    required AuthDatasource authDatasource,
  }) : _authDatasource = authDatasource;

  @override
  Future<Result<String>> checkEmailDuplicate(String email) {
    return _authDatasource
        .checkEmailDuplicate(CheckEmailDuplicate(email: email));
  }

  @override
  Future<SignInResponseDto> signIn(SignInDto signIn) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<SignUpResponseDto> signUp(SignUpDto signUp) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
