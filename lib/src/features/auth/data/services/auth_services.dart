import 'package:solo_play_application/src/features/auth/data/dtos/sign_in_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_in_response_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_up_dto.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/sign_up_response_dto.dart';

final class AuthServicesImpl implements AuthServices {
  /// 로그인
  ///
  /// 액세스 토큰과 리프레시 토큰을 서버로부터 반환.
  @override
  Future<SignInResponseDto> signIn(SignInDto signIn) async {
    await Future.delayed(const Duration(seconds: 1));
    return const SignInResponseDto(
        accessToken: "test-access-token", refreshToken: "test-refresh-token");
  }

  /// 사용자 회원가입
  ///
  /// 성공 실패에 따른 메시지 반환
  @override
  Future<SignUpResponseDto> signUp(SignUpDto signUp) async {
    await Future.delayed(const Duration(seconds: 1));
    return SignUpResponseDto.fromJson({"message": "회원가입에 성공했습니다!"});
  }
}

abstract class AuthServices {
  Future<SignInResponseDto> signIn(SignInDto signIn);

  Future<SignUpResponseDto> signUp(SignUpDto signUp);
}
