import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/cubits/password_visibility_cubit.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/views/login_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => PasswordVisibilityCubit())
      ],
      child: LoginUI(),
    );
  }
}
