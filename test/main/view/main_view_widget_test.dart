import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/course/presentation/page/main_page.dart';

void main() {
  late Widget widget;
  group("Main View UI 테스트", () {
    setUp(() {
      widget = const MaterialApp(
        home: MainPage(),
      );
    });
    testWidgets("Main View는 검색 버튼과 지도 뷰로 이루어져 있다.", (tester) async {
      await tester.pumpWidget(widget);
      expect(find.byKey(const Key("main-view-search-button")), findsOneWidget);
      expect(find.byKey(const Key("main-view-map-view")), findsOneWidget);
    });
  });
}
