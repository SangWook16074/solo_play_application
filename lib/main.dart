import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/providers/global_providers.dart';
import 'package:solo_play_application/src/core/style/app_theme.dart';
import 'package:solo_play_application/src/core/route/router.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/email_verification_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/email_verification_ui.dart';
import 'package:solo_play_application/src/features/auth/providers/auth_providers.dart';

void main() {
  final authBloc = AuthBloc();
  runApp(MultiBlocProvider(providers: [
    dioProvider,
    authApisProvider,
    authRepositoryProvider,
    BlocProvider.value(
      value: authBloc,
    ),
  ], child: MyApp(authBloc: authBloc)));
}

class MyApp extends StatelessWidget {
  final AuthBloc authBloc;
  const MyApp({super.key, required this.authBloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmailVerificationPage(),
    );
    // return MaterialApp.router(
    //   routerConfig: createRouter(authBloc),
    //   theme: appTheme,
    //   debugShowCheckedModeBanner: false,
    // );
  }
}
