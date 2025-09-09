/// 인증 관련 API 엔드포인트를 관리하는 클래스입니다.
///
/// 모든 경로는 `/api/auth`를 기본 경로로 사용합니다.
class AuthApiPath {
  /// 기본 경로
  static const String path = "/api/auth";

  /// 이메일 중복 확인 API 경로
  static const String checkEmailDuplicate = "$path/check-email-duplicate";

  /// 로그인 API 경로
  static const String login = "$path/login";
}
