import 'package:flutter/material.dart';

class UserAgreementUiTitleSection extends StatelessWidget {
  const UserAgreementUiTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "솔플 이용 약관에",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        Text(
          "동의해 주세요",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
      ],
    );
  }
}
