import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/presentation/user/widget/my_profile_edit_btn_widget.dart';

void main() {
  late Widget widget;

  group('My Profile Edit Button Widget Test', () {
    setUp(() {
      widget = MaterialApp(
          home: MyProfileEditBtnWidget(
        onTap: () {},
      ));
    });

    testWidgets("Edit Button을 눌렀을 때, 잘 동작한다.", (tester) async {
      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();

      final editButtonFinder =
          find.byKey(const Key('My Profile Edit Button Widget'));
      expect(editButtonFinder, findsOneWidget);

      await tester.tap(editButtonFinder);
      await tester.pump();
    });
  });
}
