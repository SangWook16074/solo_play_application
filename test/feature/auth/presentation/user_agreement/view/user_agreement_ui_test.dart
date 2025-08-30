import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/user_agreement.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/sections/sections.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/views/user_agreement_ui.dart';

class MockUserAgreementBloc
    extends MockBloc<UserAgreementEvent, UserAgreementState>
    implements UserAgreementBloc {}

void main() {
  group(UserAgreementUI, () {
    late MockUserAgreementBloc mockUserAgreementBloc;
    late Widget widget;

    setUp(() {
      mockUserAgreementBloc = MockUserAgreementBloc();
    });

    testWidgets('should render all sections correctly', (tester) async {
      when(() => mockUserAgreementBloc.state).thenReturn(UserAgreementState());
      whenListen(
        mockUserAgreementBloc,
        Stream<UserAgreementState>.fromIterable([UserAgreementState()]),
      );

      widget = MaterialApp(
        home: BlocProvider<UserAgreementBloc>.value(
          value: mockUserAgreementBloc,
          child: UserAgreementUI(),
        ),
      );
      await tester.pumpWidget(widget);

      expect(find.byType(UserAgreementUiTitleSection), findsOneWidget);
      expect(find.byType(UserAgreementUiTermsSection), findsOneWidget);
      expect(find.byType(UserAgreementUiDescriptionSection), findsOneWidget);
      expect(find.byType(UserAgreementUiButtonSection), findsOneWidget);
    });

    testWidgets('should render correctly when user entered', (tester) async {
      when(() => mockUserAgreementBloc.state).thenReturn(UserAgreementState());
      whenListen(
        mockUserAgreementBloc,
        Stream<UserAgreementState>.fromIterable([UserAgreementState()]),
      );

      widget = MaterialApp(
        home: BlocProvider<UserAgreementBloc>.value(
          value: mockUserAgreementBloc,
          child: UserAgreementUI(),
        ),
      );
      await tester.pumpWidget(widget);

      expectLater(find.byType(UserAgreementUI),
          matchesGoldenFile('goldens/user-agreement-ui-default.png'));
    });

    testWidgets('should render correctly when user  agreed', (tester) async {
      when(() => mockUserAgreementBloc.state).thenReturn(UserAgreementState(
          agreement: UserAgreement(
              isAgreedToMarketing: false,
              isAgreedToTerms: true,
              isOver14: true,
              isConsentedToAds: false)));

      whenListen(
        mockUserAgreementBloc,
        Stream<UserAgreementState>.fromIterable([
          UserAgreementState(
              agreement: UserAgreement(
                  isAgreedToMarketing: true,
                  isAgreedToTerms: true,
                  isOver14: true,
                  isConsentedToAds: true))
        ]),
      );

      widget = MaterialApp(
        home: BlocProvider<UserAgreementBloc>.value(
          value: mockUserAgreementBloc,
          child: UserAgreementUI(),
        ),
      );

      await tester.pumpWidget(widget);

      expectLater(find.byType(UserAgreementUI),
          matchesGoldenFile('goldens/user-agreement-ui-agreed.png'));
    });

    testWidgets('should render correctly when user all agreed', (tester) async {
      when(() => mockUserAgreementBloc.state).thenReturn(UserAgreementState(
          agreement: UserAgreement(
              isAgreedToMarketing: true,
              isAgreedToTerms: true,
              isOver14: true,
              isConsentedToAds: true)));

      whenListen(
        mockUserAgreementBloc,
        Stream<UserAgreementState>.fromIterable([
          UserAgreementState(
              agreement: UserAgreement(
                  isAgreedToMarketing: true,
                  isAgreedToTerms: true,
                  isOver14: true,
                  isConsentedToAds: true))
        ]),
      );

      widget = MaterialApp(
        home: BlocProvider<UserAgreementBloc>.value(
          value: mockUserAgreementBloc,
          child: UserAgreementUI(),
        ),
      );

      await tester.pumpWidget(widget);

      expectLater(find.byType(UserAgreementUI),
          matchesGoldenFile('goldens/user-agreement-ui-all-agreed.png'));
    });
  });
}
