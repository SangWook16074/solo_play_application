import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

class CourseHeaderWidget extends StatelessWidget {
  const CourseHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ThemeColor.basicGrey,
          ),
          child: const Center(
            child: Text(
              '서울시 > 동대문구',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
