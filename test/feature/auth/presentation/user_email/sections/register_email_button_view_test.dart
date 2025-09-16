import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/router/router_path.dart';
import 'package:solo_play_application/src/core/widgets/next_step_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/blocs/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/sections/sections.dart';

import 'register_email_validate_text_view_test.dart';

class MockGoRouter extends Mock implements GoRouter {}

void main() {
  setUpAll(() {
    registerFallbackValue(const UserEmailChanged(email: ''));
    registerFallbackValue(const UserEmailCheckDuplicate(email: ''));
  });
  group(RegisterEmailButtonView, () {
    late MockUserEmailBloc mockUserEmailBloc;
    late Widget widget;

    testWidgets('should render next step button correctly when initial state',
        (tester) async {
      mockUserEmailBloc = MockUserEmailBloc();
      when(() => mockUserEmailBloc.state).thenReturn(UserEmailState());
      widget = MaterialApp(
        home: BlocProvider<UserEmailBloc>.value(
          value: mockUserEmailBloc,
          child: Scaffold(
            body: Center(
              child: RegisterEmailButtonView(),
            ),
          ),
        ),
      );
      await tester.pumpWidget(widget);

      expect(find.byType(NextStepButton), findsOneWidget);

      expectLater(find.byType(RegisterEmailButtonView),
          matchesGoldenFile('goldens/register-email-button-view-default.png'));
    });

    testWidgets('should render next step button correctly when email valid',
        (tester) async {
      mockUserEmailBloc = MockUserEmailBloc();
      when(() => mockUserEmailBloc.state).thenReturn(UserEmailState(
          email: 'test@test.com', status: UserEmailStatus.valid));
      widget = MaterialApp(
        home: BlocProvider<UserEmailBloc>.value(
          value: mockUserEmailBloc,
          child: Scaffold(
            body: Center(
              child: RegisterEmailButtonView(),
            ),
          ),
        ),
      );
      await tester.pumpWidget(widget);
      expectLater(find.byType(RegisterEmailButtonView),
          matchesGoldenFile('goldens/register-email-button-view-active.png'));
    });

    testWidgets(
        'should emits UserEmailCheckDuplicate when NextStepButton tapped',
        (tester) async {
      // Given
      mockUserEmailBloc = MockUserEmailBloc();
      when(() => mockUserEmailBloc.state).thenReturn(UserEmailState(
        email: 'test@test.com',
        status: UserEmailStatus.valid,
      ));
      when(() => mockUserEmailBloc.add(any())).thenReturn(null);

      widget = MaterialApp(
        home: BlocProvider<UserEmailBloc>.value(
          value: mockUserEmailBloc,
          child: const Scaffold(
            body: Center(
              child: RegisterEmailButtonView(),
            ),
          ),
        ),
      );
      await tester.pumpWidget(widget);

      // When
      await tester.tap(find.byType(NextStepButton));
      await tester.pump();

      // Then
      verify(() => mockUserEmailBloc
          .add(const UserEmailCheckDuplicate(email: 'test@test.com'))).called(1);
    });

    testWidgets('should navigate to registerPassword when status is avail',
        (tester) async {
      // Given
      mockUserEmailBloc = MockUserEmailBloc();
      final mockGoRouter = MockGoRouter();

      when(() => mockUserEmailBloc.stream).thenAnswer(
        (_) => Stream.fromIterable([
          UserEmailState(status: UserEmailStatus.avail),
        ]),
      );
      when(() => mockUserEmailBloc.state).thenReturn(UserEmailState(
        email: 'test@test.com',
        status: UserEmailStatus.valid,
      ));
      when(() => mockGoRouter.push(any())).thenAnswer((_) async => null);

      widget = MaterialApp(
        home: InheritedGoRouter(
          goRouter: mockGoRouter,
          child: BlocProvider<UserEmailBloc>.value(
            value: mockUserEmailBloc,
            child: const Scaffold(
              body: Center(
                child: RegisterEmailButtonView(),
              ),
            ),
          ),
        ),
      );
      await tester.pumpWidget(widget);
      await tester.pump();

      // Then
      verify(() => mockGoRouter.push(RouterPath.registerPassword)).called(1);
    });
  });
}
