import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/widgets/check_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(CheckButton, () {
    group("select = false인 경우에", () {
      late Widget widget;
      late bool select;
      setUp(() {
        select = false;
        widget = MaterialApp(
          home: Scaffold(body: Center(child: CheckButton(select: select))),
        );
      });
      testWidgets("[CheckButton]은 enable이다.", (tester) async {
        await tester.pumpWidget(widget);
        final container =
            tester.widget<Container>(find.byKey(const Key("check-button")));
        final boxDecoration = container.decoration as BoxDecoration;

        expect(boxDecoration.color, const Color(0xffffffff));

        final border = boxDecoration.border as BoxBorder;

        expect(border.top.color, const Color(0xffCACACA));
        expect(border.bottom.color, const Color(0xffCACACA));

        final icon =
            tester.widget<Icon>(find.byKey(const Key("check-button-icon")));
        expect(icon.color, const Color(0xffCACACA));
      });

      testWidgets("should matches golden file", (tester) async {
        await tester.pumpWidget(widget);

        expectLater(find.byType(CheckButton),
            matchesGoldenFile("goldens/check-button-default.png"));
      });
    });

    group("select = true인 경우에", () {
      late Widget widget;
      late bool select;
      setUp(() {
        select = true;
        widget = MaterialApp(
          home: Scaffold(body: Center(child: CheckButton(select: select))),
        );
      });
      testWidgets("select = true라면 [CheckButton]은 able이다.", (tester) async {
        await tester.pumpWidget(widget);

        final container =
            tester.widget<Container>(find.byKey(const Key("check-button")));
        final boxDecoration = container.decoration as BoxDecoration;

        expect(boxDecoration.color, const Color(0xff266FF7));

        final border = boxDecoration.border as BoxBorder;

        expect(border.top.color, const Color(0xff266FF7));
        expect(border.bottom.color, const Color(0xff266FF7));

        final icon =
            tester.widget<Icon>(find.byKey(const Key("check-button-icon")));
        expect(icon.color, const Color(0xffffffff));
      });

      testWidgets("should matches golden file", (tester) async {
        await tester.pumpWidget(widget);

        expectLater(find.byType(CheckButton),
            matchesGoldenFile("goldens/check-button-active.png"));
      });
    });
  });
}
