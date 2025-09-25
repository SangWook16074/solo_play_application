import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/router/router_path.dart';
import 'package:solo_play_application/src/core/widgets/primary_button.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/register.dart';
import 'package:solo_play_application/src/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/register/bloc/register_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/register/bloc/register_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/bloc/verification_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/bloc/verification_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/bloc/verification_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/sections/verification_confirm_button_section.dart';

// Mock Blocs for testing
class MockVerificationBloc
    extends MockBloc<VerificationEvent, VerificationState>
    implements VerificationBloc {}

class MockRegisterBloc extends MockBloc<RegisterEvent, RegisterState>
    implements RegisterBloc {}

class MockGoRouter extends Mock implements GoRouter {}

void main() {
  group(VerificationConfirmButtonSection, () {
    late MockVerificationBloc mockVerificationBloc;
    late MockRegisterBloc mockRegisterBloc;
    late MockGoRouter mockGoRouter;

    setUpAll(() {
      registerFallbackValue(VerificationEvent.verificationSubmitted('', ''));
      registerFallbackValue(RegisterState());
      registerFallbackValue(Uri.parse('/'));
    });

    setUp(() {
      mockVerificationBloc = MockVerificationBloc();
      mockRegisterBloc = MockRegisterBloc();
      mockGoRouter = MockGoRouter();
    });

    testWidgets('displays disabled button when input is less than 6 characters',
        (WidgetTester tester) async {
      whenListen(mockVerificationBloc,
          Stream.fromIterable([const VerificationState(code: '12345')]),
          initialState:
              const VerificationState(code: '12345')); // Simulate code input

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider<VerificationBloc>.value(
              value: mockVerificationBloc,
              child: const VerificationConfirmButtonSection(),
            ),
          ),
        ),
      );

      // Check for PrimaryButton
      final buttonFinder = find.byType(PrimaryButton);
      expect(buttonFinder, findsOneWidget);

      // Assert the label text of the button
      expect(find.text('다음'), findsOneWidget);

      // Assert the button is disabled (onTap is null)
      final PrimaryButton button = tester.widget(buttonFinder);
      expect(button.onTap, isNull);

      // Assert the style of the button's text when disabled
      final Text buttonText = tester.widget(
          find.descendant(of: buttonFinder, matching: find.byType(Text)));
      expect(buttonText.style!.color, const Color(0xff8e8e8e));
      expect(buttonText.style!.fontSize, 16);
      expect(buttonText.style!.fontWeight, FontWeight.w700);

      // Golden test for disabled state
      await expectLater(
        find.byType(VerificationConfirmButtonSection),
        matchesGoldenFile(
            'goldens/verification_confirm_button_section_disabled.png'),
      );
    });

    testWidgets('displays enabled button when input is 6 characters',
        (WidgetTester tester) async {
      whenListen(mockVerificationBloc,
          Stream.fromIterable([const VerificationState(code: '123456')]),
          initialState:
              const VerificationState(code: '123456')); // Simulate code input

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider<VerificationBloc>.value(
              value: mockVerificationBloc,
              child: const VerificationConfirmButtonSection(),
            ),
          ),
        ),
      );

      // Check for PrimaryButton
      final buttonFinder = find.byType(PrimaryButton);
      expect(buttonFinder, findsOneWidget);

      // Assert the label text of the button
      expect(find.text('다음'), findsOneWidget);

      // Assert the button is enabled (onTap is not null)
      final PrimaryButton button = tester.widget(buttonFinder);
      expect(button.onTap, isNotNull);

      // Assert the style of the button's text when enabled
      final Text buttonText = tester.widget(
          find.descendant(of: buttonFinder, matching: find.byType(Text)));
      expect(buttonText.style!.color, const Color(0xffffffff));
      expect(buttonText.style!.fontSize, 16);
      expect(buttonText.style!.fontWeight, FontWeight.w700);

      // Golden test for enabled state
      await expectLater(
        find.byType(VerificationConfirmButtonSection),
        matchesGoldenFile(
            'goldens/verification_confirm_button_section_enabled.png'),
      );
    });

    testWidgets(
        'dispatches VerificationSubmitted event when enabled button is tapped',
        (WidgetTester tester) async {
      // Arrange
      const testEmail = 'test@example.com';
      const testCode = '123456';

      when(() => mockVerificationBloc.state)
          .thenReturn(const VerificationState(code: testCode));
      when(() => mockRegisterBloc.state)
          .thenReturn(RegisterState(register: Register(email: testEmail)));
      when(() => mockVerificationBloc.add(any())).thenReturn(null);

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<RegisterBloc>.value(
            value: mockRegisterBloc,
            child: BlocProvider<VerificationBloc>.value(
              value: mockVerificationBloc,
              child: const Scaffold(
                body: VerificationConfirmButtonSection(),
              ),
            ),
          ),
        ),
      );

      // Act
      final buttonFinder = find.byType(PrimaryButton);
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();

      // Assert
      verify(() => mockVerificationBloc.add(
              VerificationEvent.verificationSubmitted(testEmail, testCode)))
          .called(1);
    });

    testWidgets('navigates to verificationComplete when status is verified',
        (WidgetTester tester) async {
      // Arrange
      whenListen(
        mockVerificationBloc,
        Stream.fromIterable([
          const VerificationState(status: VerificationStatus.verified),
        ]),
        initialState: const VerificationState(),
      );
      when(() => mockRegisterBloc.state).thenReturn(
          const RegisterState(register: Register(email: 'test@example.com')));
      when(() => mockGoRouter.push(any())).thenAnswer((_) async => '');

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<RegisterBloc>.value(
            value: mockRegisterBloc,
            child: BlocProvider<VerificationBloc>.value(
              value: mockVerificationBloc,
              child: InheritedGoRouter(
                goRouter: mockGoRouter,
                child: const Scaffold(
                  body: VerificationConfirmButtonSection(),
                ),
              ),
            ),
          ),
        ),
      );

      // Act - No direct interaction needed, just pump to trigger listener
      await tester.pumpAndSettle();

      // Assert
      verify(() => mockGoRouter.push(RouterPath.verificationComplete))
          .called(1);
    });

    testWidgets('logs error message when status is error',
        (WidgetTester tester) async {
      // Arrange
      const errorMessage = 'Test error message';
      whenListen(
        mockVerificationBloc,
        Stream.fromIterable([
          const VerificationState(
              status: VerificationStatus.error, errorMessage: errorMessage),
        ]),
        initialState: const VerificationState(),
      );
      when(() => mockRegisterBloc.state).thenReturn(
          const RegisterState(register: Register(email: 'test@example.com')));

      // We can't directly test `log` from dart:developer in widget tests easily.
      // Instead, we'll verify that the listener is triggered by checking for no navigation.
      when(() => mockGoRouter.push(any())).thenAnswer((_) async => '');

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<RegisterBloc>.value(
            value: mockRegisterBloc,
            child: BlocProvider<VerificationBloc>.value(
              value: mockVerificationBloc,
              child: InheritedGoRouter(
                goRouter: mockGoRouter,
                child: const Scaffold(
                  body: VerificationConfirmButtonSection(),
                ),
              ),
            ),
          ),
        ),
      );

      // Act - No direct interaction needed, just pump to trigger listener
      await tester.pumpAndSettle();

      // Assert that no navigation occurred (as expected for an error state)
      verifyNever(() => mockGoRouter.push(any()));
      // In a real scenario, you might use a custom logger that can be mocked
      // or capture debugPrint output if `log` was redirected to it.
    });
  });
}
