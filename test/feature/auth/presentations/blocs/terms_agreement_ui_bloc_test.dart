import 'package:solo_play_application/src/features/auth/presentation/terms_agreement.dart';
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
      expect(state.isFirstAgree, false);
      expect(state.isSecondAgree, false);
      expect(state.isThirdAgree, false);
      expect(state.isFourthAgree, false);
    });

    blocTest(
      "초기에 사용자가 [AllAgreementButtonTap]이 add되면 전체가 true이다.",
      build: () => bloc,
      act: (bloc) => bloc.add(AllAgreeButtonTap()),
      expect: () => [
        state.copyWith(
            isFirstAgree: true,
            isSecondAgree: true,
            isThirdAgree: true,
            isFourthAgree: true)
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
      expect: () => [state.copyWith(isFirstAgree: true)],
    );

    blocTest(
      '사용자가 [SecondAgreementTap]이 add되면 isSecondAgree만 true이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(SecondAgreeButtonTap()),
      expect: () => [state.copyWith(isSecondAgree: true)],
    );

    blocTest(
      '사용자가 [ThirdAgreementTap]이 add되면 isThirdAgree만 true이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(ThirdAgreeButtonTap()),
      expect: () => [state.copyWith(isThirdAgree: true)],
    );

    blocTest(
      '사용자가 [FourthAgreementTap]이 add되면 isFourthAgree만 true이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(FourthAgreeButtonTap()),
      expect: () => [state.copyWith(isFourthAgree: true)],
    );

    blocTest(
      "사용자가 [FirstDisagreementTap]이 add되면 isFirstAgree만 false이다.",
      build: () => bloc,
      act: (bloc) => bloc.add(FirstDisagreeButtonTap()),
      expect: () => [state.copyWith(isFirstAgree: false)],
    );

    blocTest(
      '사용자가 [SecondDisagreementTap]이 add되면 isSecondAgree만 false이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(SecondDisagreeButtonTap()),
      expect: () => [state.copyWith(isSecondAgree: false)],
    );

    blocTest(
      '사용자가 [ThirdDisagreementTap]이 add되면 isThirdAgree만 false이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(ThirdDisagreeButtonTap()),
      expect: () => [state.copyWith(isThirdAgree: false)],
    );

    blocTest(
      '사용자가 [FourthDisagreementTap]이 add되면 isFourthAgree만 false이다.',
      build: () => bloc,
      act: (bloc) => bloc.add(FourthDisagreeButtonTap()),
      expect: () => [state.copyWith(isFourthAgree: false)],
    );
  });
}
