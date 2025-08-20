import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/widgets/primary_button.dart';

void main() {
  final Text child = Text("label");
  final Text activeChild = Text("active label");
  List arr = [];
  void Function()? onTap;

  group(PrimaryButton, () {
    late Widget widget;

    group("NextStepButton Inactive", () {
      setUp(() {
        widget = MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              onTap: onTap,
              activeChild: activeChild,
              child: child,
            ),
          ),
        );
      });

      tearDown(() {
        onTap = null;
      });

      testWidgets('should render correctly when ableToNext false',
          (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.byType(Container);
        final target = tester.widget<Container>(finder);

        expect(tester.getSize(finder).height, 57);
        expect(target.child, child);
        expect(target.alignment, Alignment.center);
        expect((target.decoration as BoxDecoration).borderRadius,
            BorderRadius.circular(10));
        expect((target.decoration as BoxDecoration).color, Color(0xffEEEEEE));

        expectLater(find.byType(PrimaryButton),
            matchesGoldenFile("goldens/next_step_button_default.png"));
      });
    });

    group("NextStepButton Active", () {
      setUp(() {
        widget = MaterialApp(
          home: Scaffold(
            body: PrimaryButton(
              onTap: () {
                arr.add(0);
              },
              activeChild: activeChild,
              child: child,
            ),
          ),
        );
      });

      tearDown(() {
        onTap = null;
        arr.clear();
      });

      testWidgets('should render correctly when onTap is not null',
          (tester) async {
        onTap = () => arr.add(0);
        await tester.pumpWidget(widget);

        final finder = find.byType(Container);
        final target = tester.widget<Container>(finder);

        expect(tester.getSize(finder).height, 57);
        expect(target.child, activeChild);
        expect(target.alignment, Alignment.center);
        expect((target.decoration as BoxDecoration).borderRadius,
            BorderRadius.circular(10));
        expect((target.decoration as BoxDecoration).color, Color(0xff266FF7));

        expectLater(find.byType(PrimaryButton),
            matchesGoldenFile("goldens/next_step_button_active.png"));
      });

      testWidgets('should call onTap when user tap widget', (tester) async {
        await tester.pumpWidget(widget);
        await tester.tap(find.byType(PrimaryButton));

        expect(arr.length, 1);
        expect(arr.first, 0);
      });
    });
  });
}
