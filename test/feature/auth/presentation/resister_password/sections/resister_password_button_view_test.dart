import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/blocs/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/sections/resister_password_button_view.dart';

import '../mocks/mock_resister_password_bloc.dart';

void main() {
  group(ResisterPasswordButtonView, () {
    late MockResisterPasswordBloc mockBloc;
    late Widget widget;

    setUp(() {
      mockBloc = MockResisterPasswordBloc();
      when(() => mockBloc.state).thenReturn(ResisterPasswordState());
      widget = MaterialApp(
        home: Scaffold(
          body: BlocProvider<ResisterPasswordBloc>.value(
            value: mockBloc,
            child: ResisterPasswordButtonView(),
          ),
        ),
      );
    });

    testWidgets("should render button with correct label", (tester) async {
      await tester.pumpWidget(widget);

      expect(find.text("다음"), findsOneWidget);
    });

    testWidgets("should be disabled when form is invalid", (tester) async {
      when(() => mockBloc.state).thenReturn(ResisterPasswordState());
      await tester.pumpWidget(widget);

      final button = find.byType(GestureDetector);
      expect(button, findsOneWidget);

      final gestureDetector = tester.widget<GestureDetector>(button);
      expect(gestureDetector.onTap, isNull);
    });

    testWidgets("should be enabled when form is valid", (tester) async {
      when(() => mockBloc.state).thenReturn(
        ResisterPasswordState(
          password: "ValidPassword123!",
          passwordCheck: "ValidPassword123!",
        ),
      );
      await tester.pumpWidget(widget);

      final button = find.byType(GestureDetector);
      expect(button, findsOneWidget);

      final gestureDetector = tester.widget<GestureDetector>(button);
      expect(gestureDetector.onTap, isNotNull);
    });

    testWidgets("should render correctly when disabled", (tester) async {
      when(() => mockBloc.state).thenReturn(ResisterPasswordState());
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(ResisterPasswordButtonView),
          matchesGoldenFile(
              'goldens/resister-password-button-view-disabled.png'));
    });

    testWidgets("should render correctly when enabled", (tester) async {
      when(() => mockBloc.state).thenReturn(
        ResisterPasswordState(
          password: "ValidPassword123!",
          passwordCheck: "ValidPassword123!",
        ),
      );
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(ResisterPasswordButtonView),
          matchesGoldenFile(
              'goldens/resister-password-button-view-enabled.png'));
    });
  });
}
