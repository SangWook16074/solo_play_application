import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/blocs/bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/widgets/validation_icon.dart';

class ResisterEmailValidateIconView extends StatelessWidget {
  const ResisterEmailValidateIconView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserEmailBloc, UserEmailState>(
      buildWhen: (previous, current) =>
          previous.email != current.email ||
          previous.isValid != current.isValid,
      builder: (context, state) {
        // 이메일이 비어있으면 아무것도 안 보여줌
        if (state.email.isEmpty) {
          return const SizedBox.shrink();
        }

        // 이메일이 입력되어 있으면 ValidationIcon 보여줌
        return ValidationIcon(
          isValid: state.isValid,
        );
      },
    );
  }
}
