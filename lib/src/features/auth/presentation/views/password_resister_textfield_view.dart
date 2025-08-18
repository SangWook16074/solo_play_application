import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/widgets/image_icon.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password/password_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password/password_resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password/password_resister_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/custom_text_field.dart';

class PasswordResisterTextFieldView extends StatelessWidget {
  const PasswordResisterTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PasswordResisterUiBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        BlocSelector<PasswordResisterUiBloc, PasswordResisterUiState, bool>(
          selector: (state) {
            return state.obscurePassword;
          },
          builder: (context, obscurePassword) {
            return CustomTextField(
              hintText: "8자 이상의 비밀번호",
              onChanged: (password) {
                bloc.add(UserPasswordChanged(password: password));
              },
              obscureText: obscurePassword,
              //// 아직 비밀번호 숨김 해제 UI 미완성
              ///
              ///
              ///
              suffixIcon: GestureDetector(
                  onTap: () {
                    bloc.add(const PasswordResisterUiEvent
                        .userPasswordObscureToggle());
                  },
                  child: ImageIconWidget(path: ImageIconPath.eyeOff)),
            );
          },
        ),
        const SizedBox(
          height: 4.0,
        ),
        BlocSelector<PasswordResisterUiBloc, PasswordResisterUiState, bool>(
          selector: (state) {
            return state.isPasswordValidate;
          },
          builder: (context, isPasswordValidate) {
            return Text(
              "✓ 8-20자 이내 ✓ 대소문자,숫자,특수문자 포함",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: isPasswordValidate
                      ? const Color(0xff266FF7)
                      : const Color(0xffcacaca)),
            );
          },
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          "비밀번호 확인",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),

        //// 아직 비밀번호 숨김 해제 UI 미완성
        ///
        ///
        ///
        BlocSelector<PasswordResisterUiBloc, PasswordResisterUiState, bool>(
          selector: (state) {
            return state.obscurePasswordCheck;
          },
          builder: (context, obscurePasswordCheck) {
            return CustomTextField(
              hintText: "8자 이상의 비밀번호",
              onChanged: (passwordCheck) {
                bloc.add(
                    UserPasswordCheckChanged(passwordCheck: passwordCheck));
              },
              obscureText: obscurePasswordCheck,
              suffixIcon: GestureDetector(
                  onTap: () {
                    bloc.add(const PasswordResisterUiEvent
                        .userPasswordCheckObscureToggle());
                  },
                  child: ImageIconWidget(path: ImageIconPath.eyeOff)),
            );
          },
        ),
        const SizedBox(
          height: 4.0,
        ),
        BlocSelector<PasswordResisterUiBloc, PasswordResisterUiState, bool>(
          selector: (state) {
            return state.isPasswordCheckValidate;
          },
          builder: (context, isPasswordCheckValidate) {
            return Text(
              "✓ 8-20자 이내 ✓ 대소문자,숫자,특수문자 포함",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: isPasswordCheckValidate
                      ? const Color(0xff266FF7)
                      : const Color(0xffcacaca)),
            );
          },
        ),
      ],
    );
  }
}
