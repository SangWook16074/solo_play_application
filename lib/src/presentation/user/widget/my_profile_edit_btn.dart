import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

class MyProfileEditBtn extends StatelessWidget {
  const MyProfileEditBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: const Key("Profile Edit Button"),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
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
