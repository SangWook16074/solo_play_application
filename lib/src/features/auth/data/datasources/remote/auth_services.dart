import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_in_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_up_dto.dart';

abstract class AuthApis {
  /// 로그인
  ///
  ///
  Future<SignInResponseDto> signIn(SignInDto signIn);

  /// 회원가입
  ///
  ///
  Future<SignUpResponseDto> signUp(SignUpDto signUp);

  /// 이메일 중복 확인
  ///
  ///
  Future<CheckEmailDuplicateResponseDto> checkEmailDuplicate(
      CheckEmailDuplicateRequestDto checkEmailDuplicate);
}
