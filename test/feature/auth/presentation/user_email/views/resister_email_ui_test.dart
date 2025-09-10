import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/widgets/next_step_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/blocs/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/sections/sections.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/views/resister_email_ui.dart';

import '../mocks/mock_user_email_bloc.dart';

void main() {
  group(ResisterEmailUI, () {
    late MockUserEmailBloc mockUserEmailBloc;
    late Widget widget;

    setUp(() {
      mockUserEmailBloc = MockUserEmailBloc();
      when(() => mockUserEmailBloc.state).thenReturn(const UserEmailState());
      widget = MaterialApp(
        home: BlocProvider<UserEmailBloc>.value(
          value: mockUserEmailBloc,
          child: const ResisterEmailUI(),
        ),
      );
    });

    testWidgets("should render all views correctly", (tester) async {
      await tester.pumpWidget(widget);

      expect(find.byType(ResisterEmailHeader), findsOneWidget);
      expect(find.byType(ResisterEmailInputTextField), findsOneWidget);
      expect(find.byType(ResisterEmailValidateIconView), findsOneWidget);
      expect(find.byType(ResisterEmailValidateTextView), findsOneWidget);
      expect(find.byType(ResisterEmailButtonView), findsOneWidget);
    });

    testWidgets("should render default UI correctly", (tester) async {
      await tester.pumpWidget(widget);

      await expectLater(
        find.byType(ResisterEmailUI),
        matchesGoldenFile('goldens/resister-email-ui-default.png'),
      );
    });

    testWidgets("button should be disabled when status is empty",
        (tester) async {
      when(() => mockUserEmailBloc.state)
          .thenReturn(const UserEmailState(status: UserEmailStatus.empty));

      await tester.pumpWidget(widget);

      final button = tester.widget<NextStepButton>(find.byType(NextStepButton));
      expect(button.onTap, isNull);
    });

    testWidgets("button should be enabled when status is valid",
        (tester) async {
      when(() => mockUserEmailBloc.state).thenReturn(const UserEmailState(
          email: "test@test.com", status: UserEmailStatus.valid));

      await tester.pumpWidget(widget);

      final button = tester.widget<NextStepButton>(find.byType(NextStepButton));
      expect(button.onTap, isNotNull);
    });

    testWidgets("should show error message when status is conflict",
        (tester) async {
      when(() => mockUserEmailBloc.state).thenReturn(
        const UserEmailState(
          email: "duplicate@test.com",
          status: UserEmailStatus.conflict,
          errorMessage: "이메일이 이미 존재합니다",
        ),
      );

      await tester.pumpWidget(widget);

      expect(find.text("이메일이 이미 존재합니다"), findsOneWidget);
    });

    testWidgets("should show success UI when status is avail", (tester) async {
      when(() => mockUserEmailBloc.state).thenReturn(
        const UserEmailState(
          email: "unique@test.com",
          status: UserEmailStatus.avail,
        ),
      );

      await tester.pumpWidget(widget);

      expect(find.textContaining("사용 가능한 이메일"), findsOneWidget);
    });
  });
}
