import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widgets/primary_text_field.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/sections/resister_email_validate_icon_view.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/widgets/validation_icon.dart';

class ResisterEmailInputTextField extends StatelessWidget {
  const ResisterEmailInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "이메일(아이디)",
          style: TextStyle(
              color: Color(0xff000000),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 6,
        ),
        PrimaryTextField(
          hintText: "abc@email.com",
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xffc3c3c3)),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ResisterEmailValidateIconView(),
          ),
        ),
      ],
    );
  }
}
