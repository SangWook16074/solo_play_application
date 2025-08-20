import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/widgets/primary_button.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/email_resister/email_resister_ui_header.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/email_resister/email_resister_ui_text_field_section.dart';

class EmailResisterUI extends StatelessWidget {
  const EmailResisterUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmailResisterUiBloc, EmailResisterUiState>(
      listener: (context, state) {
        if (state.isAvail) {
          context.read<ResisterUiBloc>().add(UserMoveToPasswordResisterUI());
        }
      },
      child: GestureDetector(
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
                        EmailResisterUiHeader(),
                        SizedBox(
                          height: 40,
                        ),
                        EmailResisterUiTextFieldSection(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: BlocSelector<EmailResisterUiBloc,
                        EmailResisterUiState, bool>(
                      selector: (state) {
                        return state.isEmailValid;
                      },
                      builder: (context, isEmailValidate) {
                        return PrimaryButton(
                          onTap: () {
                            if (!isEmailValidate) return;

                            final emailResisterUiBloc =
                                context.read<EmailResisterUiBloc>();
                            final state = emailResisterUiBloc.state;

                            emailResisterUiBloc.add(
                              UserCheckEmailDuplicate(email: state.email),
                            );
                          },
                          child: Text("다음"),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
