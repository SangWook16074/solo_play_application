import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/auth_text_field.dart';

void main() {
  final label = "test label";
  final hintLabel = "hintLabel";

  group(AuthTextField, () {
    late Widget widget;
    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: AuthTextField(
            label: label,
            hintText: hintLabel,
          ),
        ),
      );
    });

    testWidgets('should render correctly when unfocus', (tester) async {
      await tester.pumpWidget(widget);
      final widgetFinder = find.byType(TextField);
      final target = tester.widget<TextField>(widgetFinder);

      expect(
          target.decoration?.enabledBorder,
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(width: 1.0, color: Color(0xffcacaca)),
          ));
      expect(target.decoration?.hintText, hintLabel);

      await expectLater(find.byType(AuthTextField),
          matchesGoldenFile("goldens/auth_text_field_default.png"));
    });

    testWidgets('should redner correctly when focus', (tester) async {
      await tester.pumpWidget(widget);
      final widgetFinder = find.byType(TextField);

      await tester.tap(widgetFinder);
      await tester.pumpAndSettle();

      final target = tester.widget<TextField>(widgetFinder);

      expect(
          target.decoration?.focusedBorder,
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(width: 1.0, color: Color(0xff000000)),
          ));
      expect(target.decoration?.hintText, hintLabel);

      await expectLater(find.byType(AuthTextField),
          matchesGoldenFile("goldens/auth_text_field_focus.png"));
    });
  });
}
