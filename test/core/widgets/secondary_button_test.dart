import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/widgets/secondary_button.dart';

void main() {
  late Widget widget;

  group(SecondaryButton, () {
    final backgroundColor = Color(0xffEEEEEE);
    final child = Text('child');
    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xff000000),
          body: Center(
            child: SecondaryButton(
              child: child,
            ),
          ),
        ),
      );
    });

    testWidgets('should return Color(0xffEEEEEE) on background',
        (tester) async {
      await tester.pumpWidget(widget);
      final widgetFinder = find.byType(Container);
      final target = tester.widget<Container>(widgetFinder);
      final decoration = target.decoration as BoxDecoration;
      expect(decoration.color, backgroundColor);
    });

    testWidgets('should return radius 10.0 on border', (tester) async {
      await tester.pumpWidget(widget);
      final widgetFinder = find.byType(Container);
      final target = tester.widget<Container>(widgetFinder);
      final decoration = target.decoration as BoxDecoration;
      expect(decoration.borderRadius, BorderRadius.circular(10));
    });

    testWidgets('should return radius 10.0 on border', (tester) async {
      await tester.pumpWidget(widget);
      final widgetFinder = find.byType(Container);
      final target = tester.widget<Container>(widgetFinder);
      final decoration = target.decoration as BoxDecoration;
      expect(decoration.borderRadius, BorderRadius.circular(10));
    });

    testWidgets('should return child on center', (tester) async {
      await tester.pumpWidget(widget);
      final widgetFinder = find.byType(Container);
      final target = tester.widget<Container>(widgetFinder);
      expect(target.alignment, Alignment.center);
    });

    testWidgets('should render child widget', (tester) async {
      await tester.pumpWidget(widget);
      final widgetFinder = find.byType(Container);
      final target = tester.widget<Container>(widgetFinder);
      expect(target.child, child);
    });

    testWidgets('should return height fixed 57', (tester) async {
      await tester.pumpWidget(widget);
      final size = tester.getSize(find.byType(SecondaryButton));

      expect(size.height, 57);
    });

    testWidgets('should render correctly when build', (tester) async {
      await tester.pumpWidget(widget);

      expectLater(find.byType(SecondaryButton),
          matchesGoldenFile('goldens/secondary-button-default.png'));
    });
  });
}
