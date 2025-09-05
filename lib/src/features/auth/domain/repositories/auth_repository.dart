import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/login_info.dart';

abstract class AuthRepository {
  Future<Result<String>> checkEmailDuplicate(String email);

  Future<Result<void>> login(LoginInfo login);
}
