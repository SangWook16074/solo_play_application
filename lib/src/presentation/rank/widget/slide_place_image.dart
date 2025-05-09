import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:solo_play_application/src/presentation/post/widget/place_photo_widget.dart';
import 'package:solo_play_application/src/presentation/rank/widget/image_indicator.dart';

class SlidePlaceImage extends StatefulWidget {
  const SlidePlaceImage({super.key});

  @override
  State<SlidePlaceImage> createState() => _SlidePlaceImageState();
}

class _SlidePlaceImageState extends State<SlidePlaceImage> {
  final List<String> imagePaths = [
    'assets/images/cafe.jpeg',
    'assets/images/cafe2.jpg',
    'assets/images/cafe3.jpg',
  ];

  final controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 358,
          height: 200,
          child: PageView.builder(
            controller: controller,
            itemCount: imagePaths.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) => PlacePhotoWidget(
              width: 358,
              height: 200,
              imagePath: imagePaths[currentPage = index],
            ),
          ),
        ),
        Positioned(
          bottom: 8.0,
          right: 1.0,
          left: 1.0,
          child: ImageIndicator(
            length: imagePaths.length,
            currentIndex: currentPage,
          ),
        ),
      ],
    );
  }
}
