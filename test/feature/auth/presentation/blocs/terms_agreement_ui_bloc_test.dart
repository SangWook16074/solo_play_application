import 'package:solo_play_application/src/features/auth/domain/entities/user_agreement.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/user_agreement_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/user_agreement_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/user_agreement_state.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group(UserAgreementBloc, () {
    late UserAgreementBloc bloc;

    setUp(() {
      bloc = UserAgreementBloc();
    });

    test("초기에 사용자는 모든 항목에 대해서 false이다.", () {
      final agreement = bloc.state.agreement;

      expect(agreement.isOver14, false);
      expect(agreement.isAgreedToTerms, false);
      expect(agreement.isAgreedToMarketing, false);
      expect(agreement.isConsentedToAds, false);
    });

    blocTest(
      "should isOver14 is true when UserAgreementIsOver14Toggled with isAgree is true added",
      build: () => bloc,
      act: (bloc) => bloc.add(UserAgreementIsOver14Toggled(isAgree: true)),
      expect: () =>
          [UserAgreementState(agreement: UserAgreement(isOver14: true))],
    );

    blocTest(
      "should isOver14 is false when UserAgreementIsOver14Toggled with isAgree is false added",
      build: () => bloc,
      act: (bloc) => bloc.add(UserAgreementIsOver14Toggled(isAgree: false)),
      expect: () =>
          [UserAgreementState(agreement: UserAgreement(isOver14: false))],
    );

    blocTest(
      "should isAgreedToTerms true when UserAgreementIsAgreedToTerms with isAgree is true added",
      build: () => bloc,
      act: (bloc) =>
          bloc.add(UserAgreementIsAgreedToTermsTogged(isAgree: true)),
      expect: () =>
          [UserAgreementState(agreement: UserAgreement(isAgreedToTerms: true))],
    );

    blocTest(
      "should isAgreedToTerms false when UserAgreementIsAgreedToTerms with isAgree is false added",
      build: () => bloc,
      act: (bloc) =>
          bloc.add(UserAgreementIsAgreedToTermsTogged(isAgree: false)),
      expect: () => [
        UserAgreementState(agreement: UserAgreement(isAgreedToTerms: false))
      ],
    );

    blocTest(
      "should isAgreedToMarketing true when UserAgreementIsAgreedToMarketing with isAgree is true added",
      build: () => bloc,
      act: (bloc) =>
          bloc.add(UserAgreementIsAgreedToMarketingToggled(isAgree: true)),
      expect: () => [
        UserAgreementState(agreement: UserAgreement(isAgreedToMarketing: true))
      ],
    );

    blocTest(
      "should isAgreedToMarketing false when UserAgreementIsAgreedToMarketing with isAgree is false added",
      build: () => bloc,
      act: (bloc) =>
          bloc.add(UserAgreementIsAgreedToMarketingToggled(isAgree: false)),
      expect: () => [
        UserAgreementState(agreement: UserAgreement(isAgreedToMarketing: false))
      ],
    );

    blocTest(
      "should isConsentedToAds true when UserAgreementIsConsentedToAdsToggled with isAgree is true added",
      build: () => bloc,
      act: (bloc) =>
          bloc.add(UserAgreementIsConsentedToAdsToggled(isAgree: true)),
      expect: () => [
        UserAgreementState(agreement: UserAgreement(isConsentedToAds: true))
      ],
    );

    blocTest(
      "should isConsentedToAds false when UserAgreementIsConsentedToAdsToggled with isAgree is false added",
      build: () => bloc,
      act: (bloc) =>
          bloc.add(UserAgreementIsConsentedToAdsToggled(isAgree: false)),
      expect: () => [
        UserAgreementState(agreement: UserAgreement(isConsentedToAds: false))
      ],
    );

    blocTest("should all agreement is true when UserAgreementAllAgree added",
        build: () => bloc,
        act: (bloc) => bloc.add(UserAgreementAllAgree()),
        expect: () => [
              UserAgreementState(
                  agreement: UserAgreement(
                      isOver14: true,
                      isAgreedToTerms: true,
                      isAgreedToMarketing: true,
                      isConsentedToAds: true))
            ]);

    blocTest(
        "should all agreement is false when UserAgreementAllDisagree added",
        build: () => bloc,
        act: (bloc) => bloc.add(UserAgreementAllDisagree()),
        expect: () => [
              UserAgreementState(
                  agreement: UserAgreement(
                      isOver14: false,
                      isAgreedToTerms: false,
                      isAgreedToMarketing: false,
                      isConsentedToAds: false))
            ]);
  });
}
