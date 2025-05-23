import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget(
      {super.key,
      required this.width,
      required this.path,
      required this.height});
  final double width;
  final double height;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(path, fit: BoxFit.cover),
      ),
    );
  }
}
