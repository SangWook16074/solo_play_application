import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/sections/sections.dart';

class ResisterEmailUI extends StatelessWidget {
  const ResisterEmailUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 62.0, horizontal: 16.0),
        child: SafeArea(
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResisterEmailHeader(),
                  SizedBox(
                    height: 48,
                  ),
                  ResisterEmailInputTextField(),
                  SizedBox(
                    height: 4,
                  ),
                  ResisterEmailValidateTextView(),
                ],
              ),
              ResisterEmailButtonView(),
            ],
          ),
        ),
      ),
    );
  }
}
