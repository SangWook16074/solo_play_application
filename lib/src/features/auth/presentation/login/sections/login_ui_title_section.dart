import 'package:flutter/material.dart';

class LoginUiTitleSection extends StatelessWidget {
  const LoginUiTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: Key('login-ui-title'),
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "이메일로",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "로그인/회원가입하기",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
