import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widgets/primary_text_field.dart';

class EmailResisterUiTextFieldSection extends StatelessWidget {
  const EmailResisterUiTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ],
    );
  }
}
