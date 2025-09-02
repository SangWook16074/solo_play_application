import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/widgets/next_step_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/blocs/bloc.dart';

class ResisterEmailButtonView extends StatelessWidget {
  const ResisterEmailButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UserEmailBloc, UserEmailState, bool>(
      selector: (state) {
        return state.isValid;
      },
      builder: (context, isValid) {
        return NextStepButton(
          onTap: isValid ? () {} : null,
        );
      },
    );
  }
}
