import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key, this.width = 72, required this.path});
  final double width;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(path, fit: BoxFit.cover),
      ),
    );
  }
}
