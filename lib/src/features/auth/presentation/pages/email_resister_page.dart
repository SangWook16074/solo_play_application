import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/email_resister_ui.dart';

class EmailResisterPage extends StatelessWidget {
  const EmailResisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailResisterUiBloc(),
      child: const EmailResisterUI(),
    );
  }
}
