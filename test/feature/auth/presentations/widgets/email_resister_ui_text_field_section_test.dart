import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/widgets/primary_text_field.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/email_resister/email_resister_ui_text_field_section.dart';

void main() {
  late Widget widget;

  group(EmailResisterUiTextFieldSection, () {
    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: EmailResisterUiTextFieldSection(),
          ),
        ),
      );
    });

    testWidgets("should render correctly", (tester) async {
      await tester.pumpWidget(widget);
      expect(find.text("이메일(아이디)"), findsOneWidget);
      expect(find.byType(PrimaryTextField), findsOneWidget);
      expect(find.text("abc@email.com"), findsOneWidget);
    });

    testWidgets("should label property correctly", (tester) async {
      await tester.pumpWidget(widget);
      final labelFinder = find.text("이메일(아이디)");
      final label = tester.widget<Text>(labelFinder);
      expect(label.style?.fontSize, 16);
      expect(label.style?.fontWeight, FontWeight.w700);
      expect(label.style?.color, Color(0xff000000));
    });

    testWidgets("should matches goldens when unfocus", (tester) async {
      await tester.pumpWidget(widget);
      expectLater(
          find.byType(EmailResisterUiTextFieldSection),
          matchesGoldenFile(
              "goldens/email_resister_ui_text_field_section_default.png"));
    });
  });
}
