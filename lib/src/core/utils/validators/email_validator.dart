/// 이 클래스는 [email]이 올바른 이메일 형식인지 검증합니다.
///
///
class EmailValidator {
  static bool isValid(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$');
    return emailRegex.hasMatch(email);
  }
}
