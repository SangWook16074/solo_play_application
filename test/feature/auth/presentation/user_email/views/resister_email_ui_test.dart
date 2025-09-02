import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
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
      when(() => mockUserEmailBloc.state).thenReturn(UserEmailState());
      widget = MaterialApp(
        home: BlocProvider<UserEmailBloc>.value(
          value: mockUserEmailBloc,
          child: ResisterEmailUI(),
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

    testWidgets("should render correctly", (tester) async {
      await tester.pumpWidget(widget);

      expectLater(find.byType(ResisterEmailUI),
          matchesGoldenFile('goldens/resister-email-ui-default.png'));
    });
  });
}
