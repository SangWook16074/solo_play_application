import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/login_text_field_view.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/resister_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/label_button.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "이메일로",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "로그인/회원가입하기",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                const LoginTextFieldView(),
                const SizedBox(
                  height: 73,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      LoginButton(onTap: () {}),
                      const SizedBox(
                        height: 8.0,
                      ),
                      ResisterButton(
                          onTap: () => context.push("/auth/signup/terms")),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LabelButton(label: "계정찾기"),
                          const SizedBox(
                            width: 34,
                            height: 12,
                            child: VerticalDivider(
                              indent: 1,
                              color: Color(0xff8e8e8e),
                            ),
                          ),
                          LabelButton(label: "비밀번호 변경"),
                          const SizedBox(
                            width: 34,
                            height: 12,
                            child: VerticalDivider(
                              indent: 1,
                              color: Color(0xff8e8e8e),
                            ),
                          ),
                          LabelButton(label: "문의하기"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
