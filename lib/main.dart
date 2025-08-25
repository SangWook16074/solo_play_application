import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/providers/global_providers.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/email_verification_page.dart';

void main() {
  final authBloc = AuthBloc();
  runApp(MultiBlocProvider(providers: [
    dioProvider,
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
  }
}
