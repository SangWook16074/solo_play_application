import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms/terms_agreement_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/terms_agreement_ui.dart';

class TermsAgreementPage extends StatelessWidget {
  const TermsAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsAgreementUiBloc(),
      child: const TermsAgreementUI(),
    );
  }
}
