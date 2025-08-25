import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password_resister_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/password_resister_textfield_view.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/next_button.dart';

class PasswordResisterUI extends StatelessWidget {
  const PasswordResisterUI({super.key});

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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "로그인에 사용할",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w700),
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: "비밀번호",
                                      style:
                                          TextStyle(color: Color(0xff266FF7))),
                                  TextSpan(
                                    text: "를 입력해주세요.",
                                  ),
                                ]),
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      PasswordResisterTextFieldView(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: BlocSelector<PasswordResisterUiBloc,
                      PasswordResisterUiState, bool>(
                    selector: (state) {
                      return state.isPasswordChecked;
                    },
                    builder: (context, isPasswordChecked) {
                      return NextButton(
                        onTap: () {
                          if (!isPasswordChecked) {
                            return;
                          }

                          final state =
                              context.read<PasswordResisterUiBloc>().state;
                          final resisterUiBloc = context.read<ResisterUiBloc>();
                          resisterUiBloc.add(
                              UserPasswordChanged(password: state.password));
                          resisterUiBloc.add(UserMoveToVerificationUI());
                        },
                        label: "다음",
                        enabled: !isPasswordChecked,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
