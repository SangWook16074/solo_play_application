import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_resister_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/validation_icon.dart';

class ResisterEmailTextFieldView extends StatelessWidget {
  const ResisterEmailTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EmailResisterUiBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "이메일(아이디)",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        CustomTextField(
          hintText: "abc@email.com",
          onChanged: (email) {
            bloc.add(UserEmailInput(email: email));
          },
          suffixIcon: BlocSelector<EmailResisterUiBloc, EmailResisterUiState,
              EmailValidState>(
            selector: (state) {
              return state.emailValidateState;
            },
            builder: (context, emailValidateState) {
              if (emailValidateState == EmailValidState.empty) {
                return Container(
                  width: 20,
                );
              }
              final isValidate =
                  emailValidateState == EmailValidState.validate ? true : false;
              return ValidationIcon(isValidate: isValidate);
            },
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        BlocSelector<EmailResisterUiBloc, EmailResisterUiState,
            EmailValidState>(
          selector: (state) {
            return state.emailValidateState;
          },
          builder: (context, emailValidateState) {
            return emailValidateState == EmailValidState.invalidate
                ? const Text(
                    "올바른 형식으로 입력해 주세요.",
                    style: TextStyle(
                      color: Color(0xffff0000),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                : Container();
          },
        )
      ],
    );
  }
}
