import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/cubits/password_visibility_cubit.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/sections/sections.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/views/login_ui.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/widgets/widgets.dart';

class MockLoginUiBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

class MockPasswordVisibilityCubit extends MockCubit<bool>
    implements PasswordVisibilityCubit {}

void main() {
  group(LoginUI, () {
    late Widget widget;
    late MockLoginUiBloc mockLoginUiBloc;
    late MockPasswordVisibilityCubit mockPasswordVisibilityCubit;

    setUp(() {
      mockLoginUiBloc = MockLoginUiBloc();
      mockPasswordVisibilityCubit = MockPasswordVisibilityCubit();

      // 초기 상태 지정
      when(() => mockLoginUiBloc.state).thenReturn(LoginState());
      when(() => mockPasswordVisibilityCubit.state).thenReturn(false);
      whenListen(
        mockLoginUiBloc,
        Stream<LoginState>.fromIterable([LoginState()]),
      );

      widget = MaterialApp(
        home: MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>.value(
              value: mockLoginUiBloc,
            ),
            BlocProvider<PasswordVisibilityCubit>.value(
              value: mockPasswordVisibilityCubit,
            ),
          ],
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
        () => mockLoginUiBloc.add(LoginEmailChanged(email: "test@test.com")),
      ).called(1);

      await tester.enterText(find.byKey(Key("password-fields")), "password");
      verify(
        () => mockLoginUiBloc.add(LoginPasswordChanged(password: "password")),
      ).called(1);

      expectLater(find.byType(LoginUI),
          matchesGoldenFile("goldens/login-ui-email-password-input.png"));
    });

    testWidgets("should render correctly when user obscure toggle",
        (tester) async {
      await tester.pumpWidget(widget);

      await tester.enterText(find.byKey(Key("password-fields")), "password");

      verify(
        () => mockLoginUiBloc.add(LoginPasswordChanged(password: "password")),
      ).called(1);

      await tester.tap(find.byKey(
        Key('obscure-toggle'),
      ));

      verify(
        () => mockPasswordVisibilityCubit.toggle(),
      ).called(1);
    });
  });
}
