import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/user_agreement_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/views/user_agreement_ui.dart';

void main() {
  group("UserAgreementUI Integration test", () {
    testWidgets('user can toggle all agreement checkboxes', (tester) async {
      final userAgreementBloc = UserAgreementBloc();

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: userAgreementBloc,
            child: UserAgreementUI(),
          ),
        ),
      );

      // 모두 동의
      await tester.tap(find.byKey(Key("all-agreement-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isAllAgree, true);

      await tester.tap(find.byKey(Key("all-agreement-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isAllAgree, false);

      // 14세 이상
      await tester.tap(find.byKey(Key("is-over-14-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isOver14, true);

      await tester.tap(find.byKey(Key("is-over-14-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isOver14, false);

      // 이용약관
      await tester.tap(find.byKey(Key("is-agree-to-terms-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isAgreedToTerms, true);

      await tester.tap(find.byKey(Key("is-agree-to-terms-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isAgreedToTerms, false);

      // 마케팅 동의
      await tester.tap(find.byKey(Key("is-agree-to-marketing-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isAgreedToMarketing, true);

      await tester.tap(find.byKey(Key("is-agree-to-marketing-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isAgreedToMarketing, false);

      // 광고 수신 동의
      await tester.tap(find.byKey(Key("is-consented-to-ads-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isConsentedToAds, true);

      await tester.tap(find.byKey(Key("is-consented-to-ads-check-button")));
      await tester.pumpAndSettle();
      expect(userAgreementBloc.state.agreement.isConsentedToAds, false);
    });
  });
}
