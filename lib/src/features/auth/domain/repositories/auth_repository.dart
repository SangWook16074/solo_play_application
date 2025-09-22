import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/login_info.dart';
import 'package:solo_play_application/src/features/auth/data/models/verify_code_request.dart';

abstract class AuthRepository {
  Stream<AuthenticateStatus> get authStatusStream;

  Future<Result<String>> checkEmailDuplicate(String email);

  Future<Result<void>> login(LoginInfo login);

  Future<Result<String>> sendVerificationEmail(String email);

  Future<Result<String>> verifyCode(VerifyCodeRequest request);

  Future<void> logout();

  Future<String?> getAccessToken();

  void dispose();
}
