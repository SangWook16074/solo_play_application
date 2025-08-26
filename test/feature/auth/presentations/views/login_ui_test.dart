import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/login_ui.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/label_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_text_fields_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_ui_button_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_ui_title_section.dart';

class MockLoginUiBloc extends MockBloc<LoginUiEvent, LoginUiState>
    implements LoginUiBloc {}

void main() {
  group(LoginUI, () {
    late Widget widget;
    late MockLoginUiBloc mockLoginUiBloc;

    setUp(() {
      mockLoginUiBloc = MockLoginUiBloc();

      // 초기 상태 지정
      when(() => mockLoginUiBloc.state).thenReturn(LoginUiState());
      whenListen(
        mockLoginUiBloc,
        Stream<LoginUiState>.fromIterable(
            [LoginUiState(), LoginUiState(obscureText: false)]),
      );

      widget = MaterialApp(
        home: BlocProvider<LoginUiBloc>(
          create: (_) => mockLoginUiBloc, // 여기서 create 혹은 value 사용
          child: const LoginUI(),
        ),
      );
    });
    testWidgets("should render all sections correctly when default",
        (tester) async {
      await tester.pumpWidget(widget);

      expect(find.byType(LoginUiTitleSection), findsOneWidget);
      expect(find.byType(LoginTextFieldsSection), findsOneWidget);
      expect(find.byType(LoginUiButtonSection), findsOneWidget);

      expect(find.byType(LabelButton), findsNWidgets(3));
    });

    testWidgets("should render correctly with golden file", (tester) async {
      await tester.pumpWidget(widget);

      expectLater(find.byType(LoginUI),
          matchesGoldenFile("goldens/login-ui-default.png"));
    });

    testWidgets("should render correctly when user email and password input",
        (tester) async {
      await tester.pumpWidget(widget);

      await tester.enterText(find.byKey(Key("email-fields")), "test@test.com");
      verify(
        () => mockLoginUiBloc.add(LoginUiEmailChanged(email: "test@test.com")),
      ).called(1);

      await tester.enterText(find.byKey(Key("password-fields")), "password");
      verify(
        () => mockLoginUiBloc.add(LoginUiPasswordChanged(password: "password")),
      ).called(1);

      expectLater(find.byType(LoginUI),
          matchesGoldenFile("goldens/login-ui-email-password-input.png"));
    });

    testWidgets("should render correctly when user obscure toggle",
        (tester) async {
      await tester.pumpWidget(widget);

      await tester.enterText(find.byKey(Key("password-fields")), "password");

      verify(
        () => mockLoginUiBloc.add(LoginUiPasswordChanged(password: "password")),
      ).called(1);

      await tester.tap(find.byKey(
        Key('obscure-toggle'),
      ));

      verify(
        () => mockLoginUiBloc.add(LoginUiObscureTextToggled()),
      ).called(1);
    });
  });
}
