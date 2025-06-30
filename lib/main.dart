import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/style/app_theme.dart';
import 'package:solo_play_application/src/core/route/router.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AuthBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
