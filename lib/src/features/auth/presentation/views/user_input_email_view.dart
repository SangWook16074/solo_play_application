import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_verification_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_verification_ui_state.dart';

class UserInputEmailView extends StatelessWidget {
  const UserInputEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
              child: BlocSelector<EmailVerificationUiBloc,
                  EmailVerificationUiState, String>(
            selector: (state) {
              return state.userEmail;
            },
            builder: (context, email) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16.0),
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffCACACA)),
                    borderRadius: BorderRadius.circular(10.0)),
                alignment: Alignment.centerLeft,
                child: Text(
                  email,
                  style: TextStyle(
                      color: Color(0xffcacaca),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              );
            },
          )),
          SizedBox(
            width: 6,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff0070F0)),
              alignment: Alignment.center,
              child: Text(
                "재발송",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
