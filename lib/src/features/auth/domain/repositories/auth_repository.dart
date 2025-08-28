import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';

abstract class AuthRepository {
  Future<EmailDuplicateStatus> checkEmailDuplicate(String email);
}
