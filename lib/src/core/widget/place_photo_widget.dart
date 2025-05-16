import 'package:flutter/material.dart';

class PlacePhotoWidget extends StatelessWidget {
  final String imagePath;
  final Widget? child;
  const PlacePhotoWidget({
    super.key,
    required this.imagePath,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        /// 랭킹에 있는 장소의 사진 영역
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),

        /// 랭킹에 있는 장소에 대한 글쓴이의 프로필 영역
        Positioned(
          left: 10.0,
          bottom: 10.0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: child,
          ),
        ),
      ],
    );
  }
}
