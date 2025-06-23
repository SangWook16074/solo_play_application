import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/terms_agreement_page.dart';

class ResisterPage extends StatelessWidget {
  const ResisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResisterUiBloc(),
      child: const TermsAgreementPage(),
    );
  }
}
