import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widgets/primary_text_field.dart';
import 'package:solo_play_application/src/features/timer/presentation/views/timer_view.dart';

class VerificationCodeInputSection extends StatelessWidget {
  const VerificationCodeInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '인증코드를 입력해주세요.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 6),
        PrimaryTextField(
          hintText: '123456',
          keyboardType: TextInputType.numberWithOptions(),
          onChanged: (value) {},
        ),
        const SizedBox(height: 6),
        const TimerView(),
      ],
    );
  }
}
