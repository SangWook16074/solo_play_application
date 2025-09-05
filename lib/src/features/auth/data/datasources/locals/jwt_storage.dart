abstract class JwtStorage {
  // 액세스 토큰 저장
  Future<void> saveAccessToken(String accessToken);

  // 액세스 토큰 읽어오기
  Future<String?> readAccessToken();

  // 액세스 토큰 삭제
  Future<void> deleteAccessToken();

  // 리프레시 토큰 저장
  Future<void> saveRefreshToken(String refreshToken);

  // 리프레시 토큰 읽어오기
  Future<String?> readRefreshToken();

  // 리프레시 토큰 삭제
  Future<void> deleteRefreshToken();
}
