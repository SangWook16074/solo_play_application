import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/sections/user_agreement_ui_button_section.dart';

void main() {
  group(UserAgreementUiButtonSection, () {
    bool isTaped = false;

    testWidgets('should render button label correctly when onTap is null',
        (tester) async {
      final widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiButtonSection(),
          ),
        ),
      );
      await tester.pumpWidget(widget);

      final labelFinder = find.text("다음");
      expect(labelFinder, findsOneWidget);

      final label = tester.widget<Text>(labelFinder);

      expect(label.style?.color, Color(0xff8e8e8e));
      expect(label.style?.fontWeight, FontWeight.w700);
      expect(label.style?.fontSize, 16);
    });

    testWidgets('should render button label correctly when onTap is not null',
        (tester) async {
      final widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiButtonSection(
              onTap: () => isTaped = true,
            ),
          ),
        ),
      );
      await tester.pumpWidget(widget);

      final labelFinder = find.text("다음");
      expect(labelFinder, findsOneWidget);

      final label = tester.widget<Text>(labelFinder);

      expect(label.style?.color, Color(0xffffffff));
      expect(label.style?.fontWeight, FontWeight.w700);
      expect(label.style?.fontSize, 16);
    });

    testWidgets('should onTap call correctly when user tap', (tester) async {
      final widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiButtonSection(
              onTap: () => isTaped = true,
            ),
          ),
        ),
      );
      await tester.pumpWidget(widget);

      expect(isTaped, false);

      await tester.tap(find.byType(UserAgreementUiButtonSection));
      expect(isTaped, true);
    });

    testWidgets('should render correctly when onTap is null', (tester) async {
      final widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiButtonSection(),
          ),
        ),
      );
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(UserAgreementUiButtonSection),
          matchesGoldenFile(
              'goldens/user-agreement-ui-button-section-default.png'));
    });

    testWidgets('should render correctly when onTap is not null',
        (tester) async {
      final widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiButtonSection(
              onTap: () => isTaped = true,
            ),
          ),
        ),
      );
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(UserAgreementUiButtonSection),
          matchesGoldenFile(
              'goldens/user-agreement-ui-button-section-active.png'));
    });
  });
}
