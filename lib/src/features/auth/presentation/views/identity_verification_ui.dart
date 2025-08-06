import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/next_button.dart';

class IdentityVerificationUI extends StatelessWidget {
  const IdentityVerificationUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 62.0, horizontal: 16.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "본인인증을",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "진행해주세요",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      "본인 인증 후 더 빠르게 서비스를 이용하세요!",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            NextButton(
              onTap: () {},
              enabled: false,
              label: "본인인증 하러 가기",
            )
          ],
        ),
      ),
    );
  }
}
