import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/widgets/next_step_button.dart';

void main() {
  group(NextStepButton, () {
    bool isTaped = false;

    testWidgets('should render button label correctly when onTap is null',
        (tester) async {
      final widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: NextStepButton(),
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

      expectLater(find.byType(NextStepButton),
          matchesGoldenFile('goldens/next-step-button-default.png'));
    });

    testWidgets('should render button label correctly when onTap is not null',
        (tester) async {
      final widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: NextStepButton(
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

      expectLater(find.byType(NextStepButton),
          matchesGoldenFile('goldens/next-step-button-active.png'));
    });
  });
}
