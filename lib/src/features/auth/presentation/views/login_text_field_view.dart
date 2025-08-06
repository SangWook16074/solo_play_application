import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login/login_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login/login_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login/login_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/custom_text_field.dart';

class LoginTextFieldView extends StatelessWidget {
  const LoginTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginUiBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              bloc.add(ChangeInputEmail(email: email));
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "비밀번호",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          BlocSelector<LoginUiBloc, LoginUiState, bool>(
            selector: (state) {
              return state.obscureText;
            },
            builder: (context, state) {
              return CustomTextField(
                hintText: "8자이상의 비밀번호",
                obscureText: state,
                suffixIcon: Listener(
                  onPointerDown: (event) {
                    bloc.add(ObscureTextOff());
                  },
                  onPointerUp: (event) {
                    bloc.add(ObscureTextOn());
                  },
                  child: const Icon(
                    Icons.remove_red_eye_outlined,
                    size: 24,
                  ),
                ),
                onChanged: (password) {
                  bloc.add(ChangeInputPassword(password: password));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
