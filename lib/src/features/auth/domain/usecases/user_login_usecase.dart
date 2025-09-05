import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/login_info.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

class UserLoginUsecaseImpl extends UserLoginUsecase {
  final AuthRepository _authRepository;

  UserLoginUsecaseImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Result<void>> call(String email, String password) async {
    final login = LoginInfo(email: email, password: password);
    return await _authRepository.login(login);
  }
}

abstract class UserLoginUsecase {
  Future<Result<void>> call(String email, String password);
}
