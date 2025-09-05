import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/sections/user_agreement_ui_title_section.dart';

void main() {
  group(UserAgreementUiTitleSection, () {
    late Widget widget;

    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiTitleSection(),
          ),
        ),
      );
    });

    testWidgets("should render title correctly", (tester) async {
      await tester.pumpWidget(widget);

      expect(find.text("솔플 이용 약관에"), findsOneWidget);
      expect(find.text("동의해 주세요"), findsOneWidget);
    });

    testWidgets("should render textStyle correctly", (tester) async {
      await tester.pumpWidget(widget);

      final firstTitleFinder = find.text("솔플 이용 약관에");
      final secondTitleFinder = find.text("동의해 주세요");

      final firstTitle = tester.widget<Text>(firstTitleFinder);
      final secondTitle = tester.widget<Text>(secondTitleFinder);

      expect(firstTitle.style?.fontSize, 26);
      expect(firstTitle.style?.fontWeight, FontWeight.w700);
      expect(firstTitle.style?.color, Color(0xff000000));

      expect(secondTitle.style?.fontSize, 26);
      expect(secondTitle.style?.fontWeight, FontWeight.w700);
      expect(secondTitle.style?.color, Color(0xff000000));
    });

    testWidgets("should widget matches golden file", (tester) async {
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(UserAgreementUiTitleSection),
          matchesGoldenFile(
              "goldens/user-agreement-ui-title-section-default.png"));
    });
  });
}
