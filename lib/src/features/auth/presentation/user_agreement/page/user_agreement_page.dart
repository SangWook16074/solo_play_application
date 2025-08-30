import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/views/user_agreement_ui.dart';

class UserAgreementPage extends StatelessWidget {
  const UserAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserAgreementBloc(),
      child: UserAgreementUI(),
    );
  }
}
