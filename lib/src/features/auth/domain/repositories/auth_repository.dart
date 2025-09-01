import 'package:solo_play_application/src/features/auth/data/models/sign_in_dto.dart';
import 'package:solo_play_application/src/features/auth/data/models/sign_up_dto.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';

abstract class AuthRepository {
  Future<SignInResponseDto> signIn(SignInDto signIn);

  Future<SignUpResponseDto> signUp(SignUpDto signUp);

  Future<EmailDuplicateStatus> checkEmailDuplicate(String email);
}
