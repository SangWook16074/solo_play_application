import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/sections/user_agreement_ui_description_section.dart';

void main() {
  group(UserAgreementUiDescriptionSection, () {
    late Widget widget;

    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiDescriptionSection(),
          ),
        ),
      );
    });

    testWidgets('should render description correctly', (tester) async {
      await tester.pumpWidget(widget);

      final descriptionFinder = find.byType(RichText);
      expect(descriptionFinder, findsOneWidget);

      final description = tester.widget<RichText>(descriptionFinder);
      final textSpan = description.text as TextSpan;
      expect(textSpan.toPlainText(),
          "정보추체의 개인정보 및 권리 보호를 위해 개인정보 보호법 및 관계법령이 정한 바를 준수하여 안전하게 관리하고 있습니다. 자세한 사항은 개인정보처리방침에서 확인할 수 있습니다.");

      final children = textSpan.children;
      final first = children?[0] as TextSpan;
      expect(first.style?.fontSize, 12);
      expect(first.style?.fontWeight, FontWeight.w400);
      expect(first.style?.color, Color(0xff8e8e8e));

      final second = children?[1] as TextSpan;
      expect(second.style?.fontSize, 12);
      expect(second.style?.fontWeight, FontWeight.w400);
      expect(second.style?.color, Color(0xff8e8e8e));
      expect(second.style?.decoration, TextDecoration.underline);

      final third = children?[2] as TextSpan;
      expect(third.style?.fontSize, 12);
      expect(third.style?.fontWeight, FontWeight.w400);
      expect(third.style?.color, Color(0xff8e8e8e));
    });

    testWidgets('should render correclty', (tester) async {
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(UserAgreementUiDescriptionSection),
          matchesGoldenFile(
              'goldens/user-agreement-ui-descrtion-section-default.png'));
    });
  });
}
