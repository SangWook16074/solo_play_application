import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/resister_flow_view.dart';

// import 'resister_flow_view_test.mocks.dart';

// @GenerateMocks([ResisterUiBloc])

class MockResisterUiBloc extends MockBloc<ResisterUiEvent, ResisterUiState>
    implements ResisterUiBloc {}

void main() {
  late ResisterUiBloc bloc;

  setUp(() {
    bloc = MockResisterUiBloc();
  });

  Widget createTestWidget({required Widget widget}) {
    final router = GoRouter(
      initialLocation: '/',
      redirect: (context, state) => "/auth",
      routes: [
        GoRoute(
          path: '/auth',
          builder: (_, __) => widget,
        ),
        ShellRoute(
            builder: (context, state, child) => Scaffold(
                  body: child,
                ),
            routes: [
              GoRoute(
                  path: '/auth/signup/terms',
                  builder: (_, __) => const Text('Terms Page')),
              GoRoute(
                  path: '/auth/signup/email',
                  builder: (_, __) => const Text('Email Page')),
              GoRoute(
                  path: '/auth/signup/password',
                  builder: (_, __) => const Text('Password Page')),
              GoRoute(
                  path: '/auth/signup/verification',
                  builder: (_, __) => const Text('Verification Page')),
            ]),
      ],
    );

    return MaterialApp.router(
      routerConfig: router,
    );
  }

  testWidgets('Navigates to /auth/signup/email when step is SignUpStep.email',
      (tester) async {
    // 상태 변화 감지
    whenListen(
        bloc,
        Stream.fromIterable([
          const ResisterUiState(step: SignUpStep.email),
        ]),
        initialState: ResisterUiState(step: SignUpStep.terms));

    await tester.pumpWidget(
      BlocProvider<ResisterUiBloc>.value(
        value: bloc,
        child: createTestWidget(widget: const Text('Initial')),
      ),
    );

    await tester.pumpAndSettle(); // 라우팅까지 기다리기

    // 화면 이동 확인
    expect(find.text("Email Page"), findsOneWidget);
  });
}
