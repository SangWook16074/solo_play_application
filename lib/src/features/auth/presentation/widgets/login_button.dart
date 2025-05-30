import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() onTap;
  const LoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: double.maxFinite,
          height: 57,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xff266FF7),
          ),
          child: const Text(
            "로그인",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xffffffff)),
          ),
        ));
  }
}
