import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password/password_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/password_resister_ui.dart';

class PasswordResisterPage extends StatelessWidget {
  const PasswordResisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordResisterUiBloc(),
      child: const PasswordResisterUI(),
    );
  }
}
