import 'package:flutter/material.dart';

class MyAvatarWidget extends StatelessWidget {
  const MyAvatarWidget({super.key, required this.radius, required this.color});
  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: color,
        // backgroundImage: , 후에 넣을 것
      ),
    );
  }
}
