import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/models/check_email_duplicate_dto.dart';
import 'package:solo_play_application/src/features/auth/data/models/sign_in_dto.dart';
import 'package:solo_play_application/src/features/auth/data/models/sign_up_dto.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';

abstract class AuthRepository {
  Future<SignInResponseDto> signIn(SignInDto signIn);

  Future<SignUpResponseDto> signUp(SignUpDto signUp);

  Future<Result<String>> checkEmailDuplicate(String email);
}
