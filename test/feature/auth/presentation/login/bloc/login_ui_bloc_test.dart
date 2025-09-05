import 'package:bloc_test/bloc_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/bloc.dart';

import 'package:test/test.dart';

void main() {
  group(LoginBloc, () {
    late LoginBloc loginBloc;

    setUp(() {
      loginBloc = LoginBloc();
    });

    test(
        'initial state is email is empty and password is empty and obscure text is false',
        () {
      final state = loginBloc.state;
      expect(state.email.isEmpty, true);
      expect(state.password.isEmpty, true);
    });

    blocTest(
      'should emit new email when LoginUiEmailChanged is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginEmailChanged(email: 'test@test.com')),
      expect: () => [LoginState(email: "test@test.com")],
    );

    blocTest(
      'should emit new email when LoginUiPasswordChanged is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginPasswordChanged(password: 'password')),
      expect: () => [LoginState(password: "password")],
    );

    blocTest(
      'should emit new password when LoginUiPasswordChanged is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginPasswordChanged(password: 'password')),
      expect: () => [LoginState(password: "password")],
    );
  });
}
