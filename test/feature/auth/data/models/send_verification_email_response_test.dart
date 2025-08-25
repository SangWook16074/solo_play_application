import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/data/models/send_verification_email_response.dart';

void main() {
  group(SendVerificationEmailResponse, () {
    test('should create instance with email', () {
      final message = 'message';
      final model = SendVerificationEmailResponse(message: message);

      expect(model.message, message);
    });

    test('should support equality', () {
      final model1 = SendVerificationEmailResponse(message: 'message');
      final model2 = SendVerificationEmailResponse(message: 'message');

      expect(model1, equals(model2));
    });

    test('should convert to JSON correctly', () {
      final model = SendVerificationEmailResponse(message: 'message');

      final json = model.toJson();

      expect(json, {'message': 'message'});
    });

    test('should convert from JSON correctly', () {
      final json = {'message': 'message'};

      final model = SendVerificationEmailResponse.fromJson(json);

      expect(model.message, 'message');
    });

    test('copyWith should work correctly', () {
      final model = SendVerificationEmailResponse(message: 'message');

      final updated = model.copyWith(message: 'new message');

      expect(updated.message, 'new message');
      expect(updated, isNot(equals(model)));
    });
  });
}
