import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/style/app_theme.dart';
import 'package:solo_play_application/src/core/route/router.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth_bloc.dart';

void main() {
  final authBloc = AuthBloc();
  runApp(
    BlocProvider.value(
      value: authBloc,
      child: MyApp(authBloc: authBloc),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AuthBloc authBloc;
  const MyApp({super.key, required this.authBloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: createRouter(authBloc),
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
