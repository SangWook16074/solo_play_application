import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/providers/app/app_bloc_providers.dart';
import 'package:solo_play_application/src/presentation/course/view/home_ui.dart';

void main() {
  late Widget widget;
  group("Main View UI 테스트", () {
    setUp(() {
      widget = MaterialApp(
        home: MultiBlocProvider(
            providers: appBlocProvider, child: const HomeUI()),
      );
    });
    testWidgets("Main View는 검색 버튼과 지도 뷰로 이루어져 있다.", (tester) async {
      await tester.pumpWidget(widget);
      expect(find.byKey(const Key("main-view-search-button")), findsOneWidget);
      expect(find.byKey(const Key("main-view-map-view")), findsOneWidget);
    });
  });
}
