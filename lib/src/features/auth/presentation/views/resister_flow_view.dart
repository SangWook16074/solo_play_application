// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_state.dart';

/// 사용자의 회원가입 Flow
///
/// 1. 개인정보 동의
/// 2. 이메일 등록
/// 3. 비밀번호 등록
/// 4. 본인 인증
///
/// 순으로 진행됨.
class ResisterFlowView extends StatelessWidget {
  final Widget child;
  const ResisterFlowView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResisterUiBloc(),
      child: BlocListener<ResisterUiBloc, ResisterUiState>(
        listener: (context, state) {
          switch (state.step) {
            case SignUpStep.terms:
              context.push('/auth/signup/terms');
            case SignUpStep.email:
              context.push('/auth/signup/email');

            case SignUpStep.password:
              context.push("/auth/signup/password");
            case SignUpStep.verification:
              context.push("/auth/signup/verification");
          }
        },
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Scaffold(
            backgroundColor: const Color(0xffffffff),
            appBar: AppBar(
              backgroundColor: const Color(0xffffffff),
            ),
            body: child,
          ),
        ),
      ),
    );
  }
}
