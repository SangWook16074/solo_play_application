import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_verification_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_verification_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/custom_text_field.dart';

class UserInputVerificationCodeTextfieldView extends StatelessWidget {
  const UserInputVerificationCodeTextfieldView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EmailVerificationUiBloc>();
    return Column(
      children: [
        Row(
          children: [
            Text(
              "인증코드를 입력해주세요.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 50,
          child: CustomTextField(
            hintText: "123456",
            keyboardType: TextInputType.numberWithOptions(),
            onChanged: (value) {
              bloc.add(UserInputCode(code: value));
            },
          ),
        ),
      ],
    );
  }
}
