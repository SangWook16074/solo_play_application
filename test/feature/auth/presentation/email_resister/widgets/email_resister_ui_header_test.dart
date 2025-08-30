import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/email_resister_ui_header.dart';

void main() {
  late Widget widget;
  group(EmailResisterUiHeader, () {
    widget = MaterialApp(
      home: Scaffold(
        body: Center(
          child: EmailResisterUiHeader(),
        ),
      ),
    );

    testWidgets("should render text '로그인에 사용할 아이디를 입력해주세요.'", (tester) async {
      await tester.pumpWidget(widget);

      expect(find.text("로그인에 사용할"), findsOneWidget);
      expect(find.text("아이디를 입력해주세요."), findsOneWidget);

      final firstWidget = tester.widget<Text>(find.text("로그인에 사용할"));
      expect(firstWidget.style?.fontSize, 26);
      expect(firstWidget.style?.fontWeight, FontWeight.w700);

      final secondWidget = tester.widget<Text>(find.text("로그인에 사용할"));
      expect(secondWidget.style?.fontSize, 26);
      expect(secondWidget.style?.fontWeight, FontWeight.w700);

      expectLater(find.byType(EmailResisterUiHeader),
          matchesGoldenFile("goldens/email_resister_ui_header_default.png"));
    });
  });
}
