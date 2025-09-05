import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/widgets/primary_button.dart';

void main() {
  group("PrimaryButton widget test", () {
    testWidgets("비활성화 상태에서는 child가 표시된다", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              child: Text("비활성화"),
            ),
          ),
        ),
      );

      expect(find.text("비활성화"), findsOneWidget);
      final container = tester.widget<Container>(find.byType(Container));
      final BoxDecoration? decoration = container.decoration as BoxDecoration?;
      expect(decoration?.color, const Color(0xffEEEEEE));
    });

    testWidgets("활성화 상태에서는 activeChild가 우선 표시된다", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              activeChild: Text("활성화"),
              onTap: () {},
              child: Text("기본"),
            ),
          ),
        ),
      );

      expect(find.text("활성화"), findsOneWidget);
      final container = tester.widget<Container>(find.byType(Container));
      final BoxDecoration? decoration = container.decoration as BoxDecoration?;
      expect(decoration?.color, const Color(0xff266FF7));
    });

    testWidgets("activeChild가 없으면 child가 표시된다", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              child: const Text("기본"),
              onTap: () {},
            ),
          ),
        ),
      );

      expect(find.text("기본"), findsOneWidget);
    });

    testWidgets("탭 이벤트가 정상적으로 동작한다", (tester) async {
      var tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              child: const Text("눌러"),
              onTap: () => tapped = true,
            ),
          ),
        ),
      );

      await tester.tap(find.byType(PrimaryButton));
      expect(tapped, isTrue);
    });
  });

  group("PrimaryButton golden test", () {
    testWidgets("비활성화 상태 골든", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              child: Text("비활성화"),
            ),
          ),
        ),
      );
      await expectLater(
        find.byType(PrimaryButton),
        matchesGoldenFile("goldens/primary_button_disabled.png"),
      );
    });

    testWidgets("활성화 상태 골든", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              activeChild: Text("활성화"),
              onTap: () {},
              child: Text("기본"),
            ),
          ),
        ),
      );
      await expectLater(
        find.byType(PrimaryButton),
        matchesGoldenFile("goldens/primary_button_enabled.png"),
      );
    });
  });
}
