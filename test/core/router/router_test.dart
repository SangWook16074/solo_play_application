import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:solo_play_application/src/core/router/router.dart';
import 'package:solo_play_application/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/user_login_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/login_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/page/login_page.dart';

import '../mocks/mocks.dart';

void main() {
  group("router test", () {
    late MockAuthRepository mockAuthRepository;
    late MockUserLoginUsecase mockUserLoginUsecase;
    late MockLoginBloc mockLoginBloc;
    late MockAuthBloc mockAuthBloc;
    late Widget widget;

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      mockUserLoginUsecase = MockUserLoginUsecase();

      mockLoginBloc = MockLoginBloc();
      mockAuthBloc = MockAuthBloc();

      when(
        () => mockAuthBloc.stream,
      ).thenAnswer((_) => Stream.empty());

      final testRouter = router(mockAuthBloc);

      // act
      widget = MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>.value(
            value: mockAuthBloc,
          ),
          BlocProvider<LoginBloc>.value(
            value: mockLoginBloc,
          ),
          RepositoryProvider<UserLoginUsecase>.value(
            value: mockUserLoginUsecase,
          ),
          RepositoryProvider<AuthRepository>.value(
            value: mockAuthRepository,
          ),
        ],
        child: MaterialApp.router(
          routerConfig: testRouter,
        ),
      );
    });

    testWidgets('when state is unauthenticated → should redirect to login',
        (tester) async {
      // arrange
      when(() => mockAuthBloc.state)
          .thenReturn(Authenticated(status: AuthenticateStatus.authenticated));
      // act
      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();

      // assert
      expect(find.text('home'), findsOneWidget);
    });

    testWidgets('when state is unautenticated → should redirect to login',
        (tester) async {
      when(() => mockAuthBloc.state).thenReturn(
          Unauthenticated(status: AuthenticateStatus.unauthenticated));
      when(
        () => mockLoginBloc.state,
      ).thenReturn(LoginState());

      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();

      // assert
      expect(find.byType(LoginPage), findsOneWidget);
    });

    testWidgets('when state is unknown → should redirect to splash',
        (tester) async {
      when(() => mockAuthBloc.state)
          .thenReturn(Unknown(status: AuthenticateStatus.unknown));

      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();

      // assert
      expect(find.text("splash"), findsOneWidget);
    });
  });
}
