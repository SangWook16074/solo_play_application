import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widgets/primary_text_field.dart';
import 'package:solo_play_application/src/features/auth/presentation/register_password/widgets/password_validate_text.dart';

class RegisterPasswordInputTextField extends StatelessWidget {
  const RegisterPasswordInputTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryTextField(
          hintText: '비밀번호를 입력해주세요',
          obscureText: true,
          suffixIcon: GestureDetector(
            onTap: () {},
            key: Key('obscure-toggle'),
            child: Icon(Icons.remove_red_eye_outlined),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        PasswordValidateText(),
        PrimaryTextField(
          hintText: '비밀번호를 입력해주세요',
          obscureText: true,
          suffixIcon: GestureDetector(
            onTap: () {},
            key: Key('obscure-toggle'),
            child: Icon(Icons.remove_red_eye_outlined),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        PasswordValidateText(),
      ],
    );
  }
}
