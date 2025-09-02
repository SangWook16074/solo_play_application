import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widgets/primary_button.dart';

class NextStepButton extends PrimaryButton {
  NextStepButton({super.key, super.onTap})
      : super(
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
