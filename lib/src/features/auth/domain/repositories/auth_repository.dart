import 'package:solo_play_application/src/core/utils/networks/result.dart';

abstract class AuthRepository {
  Future<Result<String>> checkEmailDuplicate(String email);
}
