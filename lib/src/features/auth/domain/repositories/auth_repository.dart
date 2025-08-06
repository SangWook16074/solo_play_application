import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_in_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_up_dto.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';

abstract class AuthRepository {
  Future<SignInResponseDto> signIn(SignInDto signIn);

  Future<SignUpResponseDto> signUp(SignUpDto signUp);

  Future<EmailDuplicateStatus> checkEmailDuplicate(String email);
}
