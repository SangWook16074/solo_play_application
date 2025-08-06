import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/user_input_email_view.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/user_input_verification_code_textfield_view.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/next_button.dart';

class EmailVerificationUI extends StatelessWidget {
  const EmailVerificationUI({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 62.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "이메일",
                                  style: TextStyle(color: Color(0xff266FF7))),
                              TextSpan(
                                text: " 인증하기",
                              ),
                            ]),
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      UserInputVerificationCodeTextfieldView(),
                      SizedBox(
                        height: 13,
                      ),
                      UserInputEmailView(),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: NextButton(
                      onTap: () {},
                      // enabled: !isEmailValidate,
                      enabled: false,
                      label: "다음",
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
