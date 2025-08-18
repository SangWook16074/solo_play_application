import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_state.dart';

void main() {
  group(EmailResisterUiState, () {
    test('should return empty state when email is empty', () {
      final state = EmailResisterUiState(email: '');

      expect(state.isEmailValid, false);
      expect(state.emailValidateState, EmailValidState.empty);
    });

    test('should return invalidate when email format is wrong', () {
      final state = EmailResisterUiState(email: 'invalid_email');

      expect(state.isEmailValid, false);
      expect(state.emailValidateState, EmailValidState.invalidate);
    });

    test('should return validate when email format is correct and no error',
        () {
      final state = EmailResisterUiState(email: 'test@example.com');

      expect(state.isEmailValid, true);
      expect(state.emailValidateState, EmailValidState.validate);
    });

    test('should return conflict when errorMsg is not empty', () {
      final state = EmailResisterUiState(
        email: 'test@example.com',
        errorMsg: '이미 사용중인 이메일입니다.',
      );

      expect(state.isEmailValid, true);
      expect(state.emailValidateState, EmailValidState.conflict);
    });
  });
}
