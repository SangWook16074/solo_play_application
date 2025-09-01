import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/user_email.dart';

void main() {
  group(UserEmail, () {
    test('should constructor work correctly', () {
      final userEmail = UserEmail();

      expect(userEmail.email.isEmpty, true);
      expect(userEmail.resultMessage.isEmpty, true);
      expect(userEmail.isAvail, false);
    });

    test("should return true when isValid correctly", () {
      final userEmail = UserEmail(email: "test@test.com");

      expect(userEmail.isValid, true);
    });

    test('should return false when isValid called on invalid email', () {
      final invalidEmails = [
        'plainaddress', // @ 없음
        '@no-local-part.com', // 로컬 부분 없음
        'username@', // 도메인 없음
        'username@.com', // 도메인 이름 없음
        'username@com', // TLD 없음
        'username@domain..com', // 연속된 점
        'user name@example.com', // 공백 포함
        'user@name@example.com', // @ 두 개
        'user@.com.com', // 도메인 시작이 점
        'user@domain.c', // TLD 1글자
      ];

      for (String email in invalidEmails) {
        final userEmail = UserEmail(email: email);
        expect(userEmail.isValid, false);
      }
    });
  });
}
