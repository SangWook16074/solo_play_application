import 'package:solo_play_application/src/features/auth/domain/entities/login_info.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(LoginInfo, () {
    tearDown(() {});
    test('should constructor work correctly', () {
      final userLogin =
          LoginInfo(email: "test@test.com", password: "testpassword");

      expect(userLogin.email, "test@test.com");
      expect(userLogin.password, "testpassword");
    });
  });
}
