import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/course/presentation/view/recommend_view.dart';

void main() {
  late final MaterialApp widget;
  group("Recommend Item Widget Test", () {
    setUpAll(() {
      widget = const MaterialApp(
        home: RecommendItemWidget(title: "test title"),
      );
    });

    testWidgets("위젯의 제목이 잘 보인다.", (tester) async {
      await tester.pumpWidget(widget);
      expect(find.bySemanticsLabel("test title"), findsOneWidget);
    });

    testWidgets("사용자는 위젯을 선택하지 않으면 항상 Unselect 상태이다.", (tester) async {
      await tester.pumpWidget(widget);
      expect(find.byKey(const Key("unselect-recommemd-item")), findsOneWidget);
    });

    testWidgets("사용자가 위젯을 탭하면 선택 위젯이 나오고 탭을 중지하면 다시 미선택 위젯이 돌아온다.",
        (tester) async {
      await tester.pumpWidget(widget);

      expect(find.byKey(const Key("unselect-recommemd-item")), findsOneWidget);
      final gesture = await tester.startGesture(const Offset(200, 200));

      // await tester.tap(find.byKey(
      //   const Key("recommend-item"),
      // ));
      await tester.pump();
      expect(find.byKey(const Key("select-recommend-item")), findsOneWidget);

      await gesture.up();
      await tester.pump();
      expect(find.byKey(const Key("unselect-recommemd-item")), findsOneWidget);
    });
  });
}
