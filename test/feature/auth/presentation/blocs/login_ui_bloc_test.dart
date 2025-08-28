import 'package:bloc_test/bloc_test.dart';

import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_state.dart';
import 'package:test/test.dart';

void main() {
  group(LoginUiBloc, () {
    late LoginUiBloc loginUiBloc;

    setUp(() {
      loginUiBloc = LoginUiBloc();
    });

    test(
        'initial state is email is empty and password is empty and obscure text is false',
        () {
      final state = loginUiBloc.state;
      expect(state.email.isEmpty, true);
      expect(state.password.isEmpty, true);
      expect(state.obscureText, true);
    });

    blocTest(
      'should emit new email when LoginUiEmailChanged is added',
      build: () => loginUiBloc,
      act: (bloc) => bloc.add(LoginUiEmailChanged(email: 'test@test.com')),
      expect: () => [LoginUiState(email: "test@test.com")],
    );

    blocTest(
      'should emit new email when LoginUiPasswordChanged is added',
      build: () => loginUiBloc,
      act: (bloc) => bloc.add(LoginUiPasswordChanged(password: 'password')),
      expect: () => [LoginUiState(password: "password")],
    );

    blocTest(
      'should emit new password when LoginUiPasswordChanged is added',
      build: () => loginUiBloc,
      act: (bloc) => bloc.add(LoginUiPasswordChanged(password: 'password')),
      expect: () => [LoginUiState(password: "password")],
    );

    blocTest(
      'should emit obscureText when LoginUiObscureTextToggled is added',
      build: () => loginUiBloc,
      act: (bloc) => bloc.add(LoginUiObscureTextToggled()),
      expect: () => [LoginUiState(obscureText: false)],
    );
  });
}
