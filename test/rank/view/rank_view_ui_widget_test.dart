import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/presentation/rank/widget/best_place_widget.dart';
import 'package:solo_play_application/src/presentation/rank_ui.dart';

void main() {
  late Widget widget;

  group("Rank View UI Test", () {
    setUp(() {
      widget = const MaterialApp(
        home: RankUI(),
      );
    });

    testWidgets("rank 화면은 상단 label과 랭킹별 인기 장소들로 구성되어 있다.", (tester) async {
      await tester.pumpWidget(widget);

      expect(find.text("이번 주 가장 인기있는 장소"), findsOneWidget);
      expect(find.byType(BestPlaceWidget), findsWidgets);
      final afterTouchedFinder =
          find.byKey(const Key("After Touched Best Place Widget"));
      expect(afterTouchedFinder, findsNothing);
    });
  });
}
