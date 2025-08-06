import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/check_email_duplicate_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/email_resister_ui.dart';
import 'package:solo_play_application/src/features/auth/providers/auth_providers.dart';

class EmailResisterPage extends StatelessWidget {
  const EmailResisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        checkEmailDuplicateUsecaseProvider,
        BlocProvider(
            create: (context) => EmailResisterUiBloc(
                checkEmailDuplicateUsecase:
                    context.read<CheckEmailDuplicateUsecaseImpl>())),
      ],
      child: const EmailResisterUI(),
    );
  }
}
