import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/widgets/primary_text_field.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/sections/sections.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/widgets/password_validate_text.dart';

void main() {
  group('ResisterPasswordInputTextField', () {
    late Widget widget;

    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: Center(child: ResisterPasswordInputTextField()),
        ),
      );
    });

    testWidgets(
        'renders two PrimaryTextField and two PasswordValidateText widgets',
        (tester) async {
      // when
      await tester.pumpWidget(widget);

      // then
      expect(find.byType(PrimaryTextField), findsNWidgets(2),
          reason: '두 개의 PrimaryTextField가 렌더링 되어야 함');
      expect(find.text('비밀번호를 입력해주세요'), findsNWidgets(2),
          reason: '힌트 텍스트가 두 개 모두 표시되어야 함');
      expect(find.byIcon(Icons.remove_red_eye_outlined), findsNWidgets(2),
          reason: '각 텍스트 필드마다 eye 아이콘이 존재해야 함');
      expect(find.byType(PasswordValidateText), findsNWidgets(2),
          reason: 'PasswordValidateText가 두 번 렌더링 되어야 함');
    });

    testWidgets('obscure toggle button is tappable', (tester) async {
      // given
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ResisterPasswordInputTextField(),
          ),
        ),
      );

      final toggleButtons = find.byKey(const Key('obscure-toggle'));

      // then
      expect(toggleButtons, findsNWidgets(2));

      // when
      await tester.tap(toggleButtons.at(0));
      await tester.pump();

      await tester.tap(toggleButtons.at(1));
      await tester.pump();

      // 실제로 obscureText 값 변경 로직은 구현 안 돼 있으므로, 탭만 잘 되는지 확인
    });

    testWidgets('should render correctly when user do not input',
        (tester) async {
      // given
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(ResisterPasswordInputTextField),
          matchesGoldenFile(
              'goldens/resister-password-input-text-field-default.png'));
    });
  });
}
