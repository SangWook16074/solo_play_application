import 'package:flutter/material.dart';

class ResisterButton extends StatelessWidget {
  final Function() onTap;
  const ResisterButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: double.maxFinite,
          height: 57,
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: const Color(0xff8e8e8e)),
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffffffff),
          ),
          child: const Text(
            "이메일로 가입하기",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff000000)),
          ),
        ));
  }
}
