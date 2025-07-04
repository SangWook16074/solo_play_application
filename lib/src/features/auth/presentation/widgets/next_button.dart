import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function() onTap;
  final bool enabled;
  const NextButton({super.key, required this.onTap, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (enabled) return;
          onTap();
        },
        child: Container(
          alignment: Alignment.center,
          width: double.maxFinite,
          height: 57,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: enabled ? const Color(0xffF8F8F8) : const Color(0xff266FF7),
          ),
          child: Text(
            "다음",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: enabled
                    ? const Color(0xff8E8E8E)
                    : const Color(0xffffffff)),
          ),
        ));
  }
}
