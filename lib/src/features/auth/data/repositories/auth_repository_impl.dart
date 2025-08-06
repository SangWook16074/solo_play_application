import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_in_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_up_dto.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remote/auth_services.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

final class AuthRepositoryImpl implements AuthRepository {
  final AuthApis authServices;

  const AuthRepositoryImpl({required this.authServices});

  /// 이메일 중복 확인
  @override
  Future<EmailDuplicateStatus> checkEmailDuplicate(String email) async {
    final dto = CheckEmailDuplicateRequestDto(email: email);
    final response = await authServices.checkEmailDuplicate(dto);
    return EmailDuplicateStatus.fromResponse(response);
  }

  /// 로그인
  @override
  Future<SignInResponseDto> signIn(SignInDto signIn) {
    return authServices.signIn(signIn);
  }

  /// 회원가입
  @override
  Future<SignUpResponseDto> signUp(SignUpDto signUp) {
    return authServices.signUp(signUp);
  }
}
