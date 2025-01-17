import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/course/presentation/widget/course_widget.dart';

void main() {
  late final widget;

  group("Course Widget Tests", () {
    setUpAll(() {
      widget = MaterialApp(home: CourseWidget());
    });
    testWidgets("Course Widget이 올바르게 화면에 표시된다.", (tester) async {
      await tester.pumpWidget(widget);
      expect(find.byKey(Key("Course Widget Map")), findsOneWidget);
      expect(find.byKey(Key("Course Widget Description")), findsOneWidget);
    });

    testWidgets("Course Widget은 지역이 올바르게 표시된다.", (tester) async {
      await tester.pumpWidget(widget);
      expect(find.bySemanticsLabel("#소품샵"), findsOneWidget);
      expect(find.bySemanticsLabel("연남동"), findsOneWidget);
    });
  });
}
