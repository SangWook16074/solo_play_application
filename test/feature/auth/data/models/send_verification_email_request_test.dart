import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/data/models/send_verification_email_request.dart';

void main() {
  group(SendVerificationEmailRequest, () {
    test('should create instance with email', () {
      final email = 'test@example.com';
      final model = SendVerificationEmailRequest(email: email);

      expect(model.email, email);
    });

    test('should support equality', () {
      final model1 = SendVerificationEmailRequest(email: 'test@example.com');
      final model2 = SendVerificationEmailRequest(email: 'test@example.com');

      expect(model1, equals(model2));
    });

    test('should convert to JSON correctly', () {
      final model = SendVerificationEmailRequest(email: 'test@example.com');

      final json = model.toJson();

      expect(json, {'email': 'test@example.com'});
    });

    test('should convert from JSON correctly', () {
      final json = {'email': 'test@example.com'};

      final model = SendVerificationEmailRequest.fromJson(json);

      expect(model.email, 'test@example.com');
    });

    test('copyWith should work correctly', () {
      final model = SendVerificationEmailRequest(email: 'old@example.com');

      final updated = model.copyWith(email: 'new@example.com');

      expect(updated.email, 'new@example.com');
      expect(updated, isNot(equals(model)));
    });
  });
}
