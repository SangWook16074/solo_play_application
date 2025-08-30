import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserAgreementUiDescriptionSection extends StatelessWidget {
  const UserAgreementUiDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text:
              "정보추체의 개인정보 및 권리 보호를 위해 개인정보 보호법 및 관계법령이 정한 바를 준수하여 안전하게 관리하고 있습니다. 자세한 사항은 ",
          style: TextStyle(
            color: Color(0xff8e8e8e),
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
        TextSpan(
          text: "개인정보처리방침",
          style: TextStyle(
            color: Color(0xff8e8e8e),
            fontWeight: FontWeight.w400,
            fontSize: 12,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()..onTap = () {},
        ),
        TextSpan(
          text: "에서 확인할 수 있습니다.",
          style: TextStyle(
            color: Color(0xff8e8e8e),
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ]),
    );
  }
}
