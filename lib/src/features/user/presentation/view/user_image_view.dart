import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/profile_image_widget.dart';

class MyProfileImageView extends StatelessWidget {
  const MyProfileImageView({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt3q9O1lr3vhTXJD7Oq7y0EJATknCP3U8f-A&s";
    return const ProfileImageWidget(
      path: imageUrl,
      width: 72,
      height: 72,
    );
  }
}
