import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/widgets/next_step_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/blocs/bloc.dart';

class ResisterPasswordButtonView extends StatelessWidget {
  const ResisterPasswordButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ResisterPasswordBloc, ResisterPasswordState, bool>(
      selector: (state) {
        return state.isAvail;
      },
      builder: (context, isAvail) {
        return NextStepButton(
          onTap: isAvail ? () {} : null,
        );
      },
    );
  }
}
