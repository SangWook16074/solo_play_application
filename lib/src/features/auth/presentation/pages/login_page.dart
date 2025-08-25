import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login/login_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/login_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginUiBloc(),
      child: LoginUI(),
    );
  }
}
