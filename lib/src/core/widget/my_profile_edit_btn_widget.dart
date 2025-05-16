import 'package:flutter/material.dart';

class MyProfileEditBtnWidget extends StatelessWidget {
  final void Function() onTap;
  const MyProfileEditBtnWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: GestureDetector(
        key: const Key("My Profile Edit Button Widget"),
        onTap: onTap,
        child: Container(
          height: 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            '프로필 편집',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
