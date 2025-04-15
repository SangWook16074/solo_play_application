import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/presentation/course/widget/course_map_widget.dart';
import 'package:solo_play_application/src/presentation/rank/widget/best_place_widget.dart';

void main() {
  late Widget widget;

  group("Best Place Widget Test", () {
    setUp(() {
      widget = const MaterialApp(
        home: BestPlaceWidget(rank: 1),
      );
    });

    testWidgets("초기 랜더링 상태 확인 후 북마크 아이콘 탭 확인", (tester) async {
      await tester.pumpWidget(widget);

      /// bookmark_outline 아이콘 확인
      final bookmarkOutline = find.byIcon(Icons.bookmark_outline);
      expect(bookmarkOutline, findsOneWidget);

      /// 카드 탭하기 전 상세 내용이 안 보이는 상태가 맞는지 확인
      final afterTouchedFinder =
          find.byKey(const Key("After Touched Best Place Widget"));
      expect(afterTouchedFinder, findsNothing);

      /// bookmark_outline 아이콘을 탭한 후 bookmark 아이콘으로 정상적으로 바뀌는지 확인
      await tester.tap(bookmarkOutline);
      await tester.pump();
      expect(find.byIcon(Icons.bookmark), findsOneWidget);
    });

    testWidgets("카드 탭 후 상세 내용이 보이는지 확인", (tester) async {
      await tester.pumpWidget(widget);
      await tester.tap(find.byType(BestPlaceWidget));
      await tester.pump();

      expect(find.byKey(const Key("Detail about the place")), findsOneWidget);
      expect(find.byKey(const Key("Show course related to the place")),
          findsOneWidget);
      expect(find.byType(CourseMapWidget), findsOneWidget);
    });
  });
}
