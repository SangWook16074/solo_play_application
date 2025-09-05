import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/bloc.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/user_agreement.dart';

void main() {
  group(UserAgreementBloc, () {
    test('initial state is UserAgreementState() (defaults)', () {
      final bloc = UserAgreementBloc();
      expect(bloc.state, const UserAgreementState());
    });

    blocTest<UserAgreementBloc, UserAgreementState>(
      'emits state with isOver14 = true when UserAgreementIsOver14Toggled(true) is added',
      build: () => UserAgreementBloc(),
      act: (bloc) => bloc.add(UserAgreementIsOver14Toggled(isAgree: true)),
      expect: () => [
        const UserAgreementState(
          agreement: UserAgreement(isOver14: true),
        ),
      ],
    );

    blocTest<UserAgreementBloc, UserAgreementState>(
      'emits state with isAgreedToTerms = true when UserAgreementIsAgreedToTermsTogged(true) is added',
      build: () => UserAgreementBloc(),
      act: (bloc) =>
          bloc.add(UserAgreementIsAgreedToTermsTogged(isAgree: true)),
      expect: () => [
        const UserAgreementState(
          agreement: UserAgreement(isAgreedToTerms: true),
        ),
      ],
    );

    blocTest<UserAgreementBloc, UserAgreementState>(
      'emits state with isAgreedToMarketing = true when UserAgreementIsAgreedToMarketingToggled(true) is added',
      build: () => UserAgreementBloc(),
      act: (bloc) =>
          bloc.add(UserAgreementIsAgreedToMarketingToggled(isAgree: true)),
      expect: () => [
        const UserAgreementState(
          agreement: UserAgreement(isAgreedToMarketing: true),
        ),
      ],
    );

    blocTest<UserAgreementBloc, UserAgreementState>(
      'emits state with isConsentedToAds = true when UserAgreementIsConsentedToAdsToggled(true) is added',
      build: () => UserAgreementBloc(),
      act: (bloc) =>
          bloc.add(UserAgreementIsConsentedToAdsToggled(isAgree: true)),
      expect: () => [
        const UserAgreementState(
          agreement: UserAgreement(isConsentedToAds: true),
        ),
      ],
    );

    blocTest<UserAgreementBloc, UserAgreementState>(
      'emits all true when UserAgreementAllAgree is added',
      build: () => UserAgreementBloc(),
      act: (bloc) => bloc.add(UserAgreementAllAgree()),
      expect: () => [
        const UserAgreementState(
          agreement: UserAgreement(
            isOver14: true,
            isAgreedToTerms: true,
            isAgreedToMarketing: true,
            isConsentedToAds: true,
          ),
        ),
      ],
    );

    blocTest<UserAgreementBloc, UserAgreementState>(
      'emits all true then all false when AllAgree followed by AllDisagree are added',
      build: () => UserAgreementBloc(),
      act: (bloc) {
        bloc.add(UserAgreementAllAgree());
        bloc.add(UserAgreementAllDisagree());
      },
      expect: () => [
        const UserAgreementState(
          agreement: UserAgreement(
            isOver14: true,
            isAgreedToTerms: true,
            isAgreedToMarketing: true,
            isConsentedToAds: true,
          ),
        ),
        const UserAgreementState(), // defaults are false
      ],
    );
  });
}
