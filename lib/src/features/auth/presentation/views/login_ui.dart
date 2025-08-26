import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_text_fields_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_ui_button_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/login_ui_title_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/label_button.dart';

import '../blocs/login_ui_bloc.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginUiBloc>();
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  LoginUiTitleSection(),
                  const SizedBox(
                    height: 48,
                  ),
                  BlocBuilder<LoginUiBloc, LoginUiState>(
                    builder: (context, state) {
                      return LoginTextFieldsSection(
                        onEmailChanged: (email) {
                          bloc.add(LoginUiEmailChanged(email: email));
                        },
                        onPasswordChanged: (password) {
                          bloc.add(LoginUiPasswordChanged(password: password));
                        },
                        isObscureOn: state.obscureText,
                        onObscureToggle: () {
                          bloc.add(LoginUiObscureTextToggled());
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 73,
                  ),
                  BlocBuilder<LoginUiBloc, LoginUiState>(
                    builder: (context, state) {
                      return LoginUiButtonSection(
                        onLoginButtonTap: () {
                          bloc.add(LoginUiLoginButtonTap());
                        },
                        onSignupButtonTap: () {
                          bloc.add(LoginUiSignUpButtonTap());
                        },
                      );
                    },
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
