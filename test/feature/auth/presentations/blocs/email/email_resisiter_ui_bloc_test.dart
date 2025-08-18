import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/check_email_duplicate_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_state.dart';
import 'package:test/test.dart';

import 'email_resisiter_ui_bloc_test.mocks.dart';

@GenerateMocks([CheckEmailDuplicateUsecase])
void main() {
  group(EmailResisterUiBloc, () {
    late MockCheckEmailDuplicateUsecase checkEmailDuplicateUsecase;
    late EmailResisterUiBloc bloc;
    late EmailResisterUiState state;

    setUp(() {
      checkEmailDuplicateUsecase = MockCheckEmailDuplicateUsecase();
      state = EmailResisterUiState();
      bloc = EmailResisterUiBloc(
        checkEmailDuplicateUsecase: checkEmailDuplicateUsecase,
      );
    });

    test("초기에 사용자가 입력한 이메일은 BLANK다.", () {
      expect(state.email.length, 0);
    });

    test("초기에 사용자가 입력한 이메일의 ERROR MSG는 BLANK다.", () {
      expect(state.errorMsg.length, 0);
    });

    blocTest(
      "UserEmailChanged 이벤트를 통해 이메일이 변경된다.",
      build: () => bloc,
      act: (bloc) {
        final email = "test@test.com";
        return bloc.add(UserEmailInput(email: email));
      },
      expect: () => [
        state.copyWith(
          email: "test@test.com",
        )
      ],
    );
  });
}
