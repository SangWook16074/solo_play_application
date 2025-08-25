import 'package:solo_play_application/src/features/auth/presentation/blocs/terms_agreement_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms_agreement_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms_agreement_ui_state.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group(TermsAgreementUiBloc, () {
    late TermsAgreementUiBloc bloc;
    late TermsAgreementUiState state;

    setUp(() {
      state = const TermsAgreementUiState();
      bloc = TermsAgreementUiBloc();
    });

    test("초기에 사용자는 모든 항목에 대해서 false이다.", () {
      expect(state.isAgree, false);
      expect(state.isAllAgreement, false);
      expect(state.isOver14, false);
      expect(state.isAgreedToTerms, false);
      expect(state.isAgreedToMarketing, false);
      expect(state.isConsentedToAds, false);
    });

    blocTest(
      "초기에 사용자가 [AllAgreementButtonTap]이 add되면 전체가 true이다.",
      build: () => bloc,
      act: (bloc) => bloc.add(AllAgreeButtonTap()),
      expect: () => [
        state.copyWith(
            isOver14: true,
            isAgreedToTerms: true,
            isAgreedToMarketing: true,
            isConsentedToAds: true)
      ],
    );

    blocTest(
      "초기에 사용자가 [AllDisagreementButtonTap]이 add되면 전체가 false이다.",
      build: () => bloc,
      act: (bloc) => bloc.add(AllDisagreeButtonTap()),
      expect: () => [state],
    );

    blocTest(
      "사용자가 [FirstAgreementTap]이 add되면 isFirstAgree만 true이다.",
      build: () => bloc,
      act: (bloc) => bloc.add(FirstAgreeButtonTap()),
      expect: () => [state.copyWith(isOver14: true)],
    );

    blocTest(
      '사용자가 [SecondAgreementTap]이 add되면 isSecondAgree만 true이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(SecondAgreeButtonTap()),
      expect: () => [state.copyWith(isAgreedToTerms: true)],
    );

    blocTest(
      '사용자가 [ThirdAgreementTap]이 add되면 isThirdAgree만 true이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(ThirdAgreeButtonTap()),
      expect: () => [state.copyWith(isAgreedToMarketing: true)],
    );

    blocTest(
      '사용자가 [FourthAgreementTap]이 add되면 isFourthAgree만 true이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(FourthAgreeButtonTap()),
      expect: () => [state.copyWith(isConsentedToAds: true)],
    );

    blocTest(
      "사용자가 [FirstDisagreementTap]이 add되면 isFirstAgree만 false이다.",
      build: () => bloc,
      act: (bloc) => bloc.add(FirstDisagreeButtonTap()),
      expect: () => [state.copyWith(isOver14: false)],
    );

    blocTest(
      '사용자가 [SecondDisagreementTap]이 add되면 isSecondAgree만 false이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(SecondDisagreeButtonTap()),
      expect: () => [state.copyWith(isAgreedToTerms: false)],
    );

    blocTest(
      '사용자가 [ThirdDisagreementTap]이 add되면 isThirdAgree만 false이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(ThirdDisagreeButtonTap()),
      expect: () => [state.copyWith(isAgreedToMarketing: false)],
    );

    blocTest(
      '사용자가 [FourthDisagreementTap]이 add되면 isFourthAgree만 false이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(FourthDisagreeButtonTap()),
      expect: () => [state.copyWith(isConsentedToAds: false)],
    );
  });
}
