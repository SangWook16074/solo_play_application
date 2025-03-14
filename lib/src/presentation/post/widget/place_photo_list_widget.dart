import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/post/widget/place_photo_widget.dart';

class PlacePhotoListWidget extends StatelessWidget {
  const PlacePhotoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const PlacePhotoWidget();
        },
      ),
    );
  }
}
