import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/widgets/primary_button.dart';
import 'package:solo_play_application/src/core/widgets/secondary_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_ui_button_section.dart';

void main() {
  group(LoginUiButtonSection, () {
    late Widget widget;
    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: LoginUiButtonSection(
              onLoginButtonTap: () {},
              onSignupButtonTap: () {},
            ),
          ),
        ),
      );
    });

    testWidgets("should render login button correctly", (tester) async {
      await tester.pumpWidget(widget);

      expect(find.byType(PrimaryButton), findsOneWidget);

      final labelFinder = find.text("로그인");
      expect(labelFinder, findsOneWidget);

      final label = tester.widget<Text>(labelFinder);
      expect(label.style?.color, Color(0xffffffff));
      expect(label.style?.fontWeight, FontWeight.w700);
      expect(label.style?.fontSize, 16);
    });

    testWidgets('should render signup button correctly', (tester) async {
      await tester.pumpWidget(widget);

      expect(find.byType(SecondaryButton), findsOneWidget);
      final labelFinder = find.text("이메일로 회원가입");
      expect(labelFinder, findsOneWidget);

      final label = tester.widget<Text>(labelFinder);
      expect(label.style?.color, Color(0xff000000));
      expect(label.style?.fontWeight, FontWeight.w700);
      expect(label.style?.fontSize, 16);
    });

    testWidgets('should button space 8.0', (tester) async {
      await tester.pumpWidget(widget);

      final loginButtonFinder = find.byType(PrimaryButton);
      final signupButtonFinder = find.byType(SecondaryButton);

      final loginButtonBottom = tester.getBottomLeft(loginButtonFinder).dy;
      final signupButtonTop = tester.getTopLeft(signupButtonFinder).dy;

      expect(signupButtonTop - loginButtonBottom, 8);
    });

    testWidgets('should MainAxisAlignment.center', (tester) async {
      await tester.pumpWidget(widget);

      final sectionFinder = find.byType(Column);
      final section = tester.widget<Column>(sectionFinder);

      expect(section.mainAxisAlignment, MainAxisAlignment.center);
    });

    testWidgets('should render correctly', (tester) async {
      await tester.pumpWidget(widget);

      expectLater(find.byType(LoginUiButtonSection),
          matchesGoldenFile('goldens/login-ui-button-section-default.png'));
    });
  });
}
