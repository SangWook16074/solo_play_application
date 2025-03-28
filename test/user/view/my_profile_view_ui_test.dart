import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/presentation/user/view/my_profile_view.dart';

void main() {
  late Widget widget;

  group(
    'My Profile View UI Test',
    () {
      setUp(() {
        widget = const MaterialApp(home: MyProfileView());
      });

      testWidgets('My Profile View는 코스와 포스팅을 보여준다.', (tester) async {
        await tester.pumpWidget(widget);
        await tester.pumpAndSettle();
        expect(find.byKey(const Key('my-profile-view-course-widget')),
            findsOneWidget);

        expect(
            find.byKey(const Key('my-profile-view-post-widget')), findsNothing);
      });
    },
  );
}
