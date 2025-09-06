import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/router/go_router_refresh_stream.dart';
import 'package:solo_play_application/src/core/router/router_path.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/page/login_page.dart';

GoRouter router(AuthBloc authBloc) => GoRouter(
      initialLocation: RouterPath.splash,
      refreshListenable: GoRouterRefreshStream(authBloc.stream),
      redirect: (context, state) {
        final authState = context.read<AuthBloc>().state;
        return switch (authState.status) {
          AuthenticateStatus.unknown => RouterPath.splash,
          AuthenticateStatus.authenticated => RouterPath.home,
          AuthenticateStatus.unauthenticated => RouterPath.login,
        };
      },
      routes: [
        GoRoute(
          name: RouterPath.home,
          path: RouterPath.home,
          builder: (context, state) => Scaffold(
            body: Center(
              child: Text("home"),
            ),
          ),
        ),
        GoRoute(
          name: RouterPath.login,
          path: RouterPath.login,
          builder: (context, state) => LoginPage(),
        ),
        GoRoute(
          name: RouterPath.splash,
          path: RouterPath.splash,
          builder: (context, state) => Scaffold(
            body: Center(
              child: Text("splash"),
            ),
          ),
        )
      ],
    );
