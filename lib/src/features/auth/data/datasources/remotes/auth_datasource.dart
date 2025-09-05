import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/models/check_email_duplicate.dart';
import 'package:solo_play_application/src/features/auth/data/models/login.dart';

abstract class AuthDatasource {
  Future<Result<String>> checkEmailDuplicate(
      CheckEmailDuplicateRequest request);

  Future<Result<Map<String, dynamic>>> login(LoginRequest request);
}
