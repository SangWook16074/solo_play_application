import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/sections/sections.dart';

void main() {
  group(LoginUiTitleSection, () {
    late Widget widget;
    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: LoginUiTitleSection(),
          ),
        ),
      );
    });

    testWidgets("should render 이메일로 && 로그인/회원가입하기", (tester) async {
      await tester.pumpWidget(widget);
      final firstTitleFinder = find.text("이메일로");
      final secondTitleFinder = find.text("로그인/회원가입하기");
      expect(firstTitleFinder, findsOneWidget);
      expect(secondTitleFinder, findsOneWidget);

      final firstTitle = tester.widget<Text>(firstTitleFinder);
      final secondTitle = tester.widget<Text>(secondTitleFinder);

      expect(firstTitle.style?.color, Color(0xff000000));
      expect(firstTitle.style?.fontSize, 26);
      expect(firstTitle.style?.fontWeight, FontWeight.w700);

      expect(secondTitle.style?.color, Color(0xff000000));
      expect(secondTitle.style?.fontSize, 26);
      expect(secondTitle.style?.fontWeight, FontWeight.w700);
    });

    testWidgets("should alignment CrossAxisAlignment.start", (tester) async {
      await tester.pumpWidget(widget);
      final titleFinder = find.byKey(Key('login-ui-title'));
      final title = tester.widget<Column>(titleFinder);
      expect(title.crossAxisAlignment, CrossAxisAlignment.start);
    });

    testWidgets("should alignment MainAxisAlignment.center", (tester) async {
      await tester.pumpWidget(widget);
      final titleFinder = find.byKey(Key('login-ui-title'));
      final title = tester.widget<Column>(titleFinder);
      expect(title.mainAxisAlignment, MainAxisAlignment.center);
    });

    testWidgets('should render correctly', (tester) async {
      await tester.pumpWidget(widget);
      expectLater(find.byType(LoginUiTitleSection),
          matchesGoldenFile('goldens/login-ui-title-default.png'));
    });
  });
}
