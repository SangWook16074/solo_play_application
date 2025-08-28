import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/login_ui.dart';

void main() {
  group("LoginUI integration test", () {
    testWidgets('User can input email/password and toggle obscure text',
        (tester) async {
      // 실제 BLoC 생성
      final loginUiBloc = LoginUiBloc();

      // LoginUI를 MaterialApp + BlocProvider로 감싸기
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: loginUiBloc,
            child: const LoginUI(),
          ),
        ),
      );

      // 초기 obscure 아이콘 확인
      expect(find.byIcon(Icons.remove_red_eye_outlined), findsOneWidget);

      // 이메일 입력
      await tester.enterText(
          find.byKey(const Key('email-fields')), 'test@example.com');
      await tester.pumpAndSettle();

      // 비밀번호 입력
      await tester.enterText(
          find.byKey(const Key('password-fields')), 'password123');
      await tester.pumpAndSettle();

      // BLoC 상태 확인 (테스트 목적상 실제 state를 직접 확인 가능)
      expect(loginUiBloc.state.email, 'test@example.com');
      expect(loginUiBloc.state.password, 'password123');
      expect(loginUiBloc.state.obscureText, true);

      // obscure toggle 버튼 클릭
      await tester.tap(find.byKey(const Key('obscure-toggle')));
      await tester.pumpAndSettle();

      // 상태와 UI 반영 확인
      expect(loginUiBloc.state.obscureText, false);
      expect(find.byIcon(Icons.remove_red_eye), findsOneWidget);

      // 다시 토글
      await tester.tap(find.byKey(const Key('obscure-toggle')));
      await tester.pumpAndSettle();

      expect(loginUiBloc.state.obscureText, true);
      expect(find.byIcon(Icons.remove_red_eye_outlined), findsOneWidget);
    });
  });
}
