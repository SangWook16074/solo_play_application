import 'package:bloc_test/bloc_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_state.dart';
import 'package:test/test.dart';

void main() {
  group(ResisterUiBloc, () {
    late ResisterUiBloc bloc;

    setUp(() {
      bloc = ResisterUiBloc();
    });

    test("ResisterUiBloc의 초기 단계는 terms다.", () {
      expect(bloc.state.step, SignUpStep.terms);
    });

    test("ResisterUiBloc의 초기 사용자 정보 중 이메일과 비밀번호는 " ", 모든 약관은 false다.", () {
      expect(bloc.state.userInfo.email.isEmpty, true);
      expect(bloc.state.userInfo.password.isEmpty, true);
      expect(bloc.state.userInfo.isAgreedToMarketing, false);
      expect(bloc.state.userInfo.isAgreedToTerms, false);
      expect(bloc.state.userInfo.isConsentedToAds, false);
      expect(bloc.state.userInfo.isOver14, false);
    });

    blocTest("UserTermsChanged가 add되면 새로운 이용약관 동의 정보를 emit한다.",
        build: () => bloc,
        act: (bloc) => bloc.add(UserTermsChanged(
            isOver14: true,
            isAgreedToTerms: true,
            isAgreedToMarketing: true,
            isConsentedToAds: true)),
        expect: () => [
              ResisterUiState(
                  userInfo: UserInfo(
                      isAgreedToMarketing: true,
                      isOver14: true,
                      isAgreedToTerms: true,
                      isConsentedToAds: true))
            ]);

    blocTest(
      "UserEmailChanged가 add되면 새로운 이메일을 emit한다.",
      build: () => bloc,
      act: (bloc) => bloc.add(UserEmailChanged(email: "test@test.com")),
      expect: () =>
          [ResisterUiState(userInfo: UserInfo(email: "test@test.com"))],
    );

    blocTest(
      "UserPasswordChanged가 add되면 새로운 이메일을 emit한다.",
      build: () => bloc,
      act: (bloc) => bloc.add(UserPasswordChanged(password: "test-password")),
      expect: () =>
          [ResisterUiState(userInfo: UserInfo(password: "test-password"))],
    );

    blocTest(
      "UserMoveToEmailResisterUI가 add되면 email을 emit한다.",
      build: () => bloc,
      act: (bloc) => bloc.add(UserMoveToEmailResisterUI()),
      expect: () => [ResisterUiState(step: SignUpStep.email)],
    );

    blocTest(
      "UserMoveToPasswordResisterUI가 add되면 password을 emit한다.",
      build: () => bloc,
      act: (bloc) => bloc.add(UserMoveToPasswordResisterUI()),
      expect: () => [ResisterUiState(step: SignUpStep.password)],
    );

    blocTest(
      "UserMoveToVerificationUI가 add되면 password을 emit한다.",
      build: () => bloc,
      act: (bloc) => bloc.add(UserMoveToVerificationUI()),
      expect: () => [ResisterUiState(step: SignUpStep.verification)],
    );
  });
}
