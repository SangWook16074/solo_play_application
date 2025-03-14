import 'package:flutter/material.dart';

class MyAvatarWidget extends StatelessWidget {
  const MyAvatarWidget({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: width,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Image.asset("assets/images/raccoon.png", fit: BoxFit.cover),
      ),
    );
  }
}
