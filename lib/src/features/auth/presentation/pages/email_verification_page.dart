import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:solo_play_application/src/features/auth/presentation/blocs/email_verification_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/email_verification_ui.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailVerificationUiBloc(
          // email: context.read<ResisterUiBloc>().state.userInfo.email,
          email: "test@test.com"),
      child: EmailVerificationUI(),
    );
  }
}
