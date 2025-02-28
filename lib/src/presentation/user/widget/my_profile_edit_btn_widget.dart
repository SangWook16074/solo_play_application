import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

class MyProfileEditBtnWidget extends StatelessWidget {
  const MyProfileEditBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        key: const Key("My Profile Edit Button Widget"),
        onTap: () {},
        child: Container(
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ThemeColor.basicGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            '프로필 편집',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
