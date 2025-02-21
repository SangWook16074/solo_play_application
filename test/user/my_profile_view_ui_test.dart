import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/presentation/user/view/my_profile_view.dart';

void main() {
  late final widget;

  group(
    'My Profile View UI Test',
    () {
      setUpAll(() {
        widget = const MaterialApp(home: MyProfileView());
      });

      /// 프로필 편집 버튼 onTap 테스트
      testWidgets('profileEditBtn이 click했을 때, 잘 동작한다.', (tester) async {
        bool isTap = false;

        /// 위젯을 랜더링함
        await tester.pumpWidget(widget);

        /// 버튼을 key에 맞게 찾음
        final btnFinder = find.byKey(const Key("Profile Edit Button"));
        expect(btnFinder, findsOneWidget);

        /// 버튼 클릭
        await tester.tap(btnFinder);
        await tester.pump();
      });
    },
  );
}
