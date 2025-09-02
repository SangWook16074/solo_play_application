import 'package:flutter/material.dart';

class EmailResisterUiHeader extends StatelessWidget {
  const EmailResisterUiHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "로그인에 사용할",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "아이디", style: TextStyle(color: Color(0xff266FF7))),
                TextSpan(
                  text: "를 입력해주세요.",
                ),
              ]),
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}
