import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/sections/verification_email_header.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/sections/verification_code_input_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/sections/resend_email_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/verification/sections/verification_confirm_button_section.dart';

class VerificationEmailUi extends StatelessWidget {
  const VerificationEmailUi({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: SafeArea(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: SafeArea(
                    bottom: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 62.0, horizontal: 16.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                VerificationEmailHeader(),
                                SizedBox(
                                  height: 85,
                                ),
                                VerificationCodeInputSection(),
                                ResendEmailSection(),
                              ],
                            ),
                          ),
                          const VerificationConfirmButtonSection(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}