import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/blocs/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/views/resister_password_ui.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/sections/sections.dart';

import '../mocks/mock_resister_password_bloc.dart';

void main() {
  group('ResisterPasswordUI', () {
    late MockResisterPasswordBloc mockBloc;
    late Widget widget;

    setUp(() {
      mockBloc = MockResisterPasswordBloc();
      when(() => mockBloc.state).thenReturn(ResisterPasswordState());

      widget = MaterialApp(
        home: BlocProvider<ResisterPasswordBloc>.value(
          value: mockBloc,
          child: ResisterPasswordUI(),
        ),
      );
    });
    testWidgets('should render all required sections',
        (WidgetTester tester) async {
      await tester.pumpWidget(widget);

      // Header section should be present
      expect(find.byType(ResisterPasswordHeader), findsOneWidget);

      // Input text field should be present
      expect(find.byType(ResisterPasswordInputTextField), findsOneWidget);

      // Button view should be present
      expect(find.byType(ResisterPasswordButtonView), findsOneWidget);
    });

    testWidgets('should render correctly', (tester) async {
      await tester.pumpWidget(widget);

      expectLater(find.byType(ResisterPasswordUI),
          matchesGoldenFile('goldens/resister-password-ui-default.png'));
    });
  });
}
