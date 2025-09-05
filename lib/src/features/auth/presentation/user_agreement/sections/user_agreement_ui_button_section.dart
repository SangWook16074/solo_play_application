import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widgets/primary_button.dart';

class UserAgreementUiButtonSection extends StatelessWidget {
  final void Function()? onTap;
  const UserAgreementUiButtonSection({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onTap: onTap,
      activeChild: Text(
        "다음",
        style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      child: Text(
        "다음",
        style: TextStyle(
            color: Color(0xff8e8e8e),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
