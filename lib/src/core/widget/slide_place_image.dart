import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/image_indicator.dart';
import 'package:solo_play_application/src/core/widget/place_photo_widget.dart';

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

  final controller = PageController(viewportFraction: 1.0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: [
          Container(
            width: 326,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: PageView.builder(
                physics: const ClampingScrollPhysics(),
                controller: controller,
                itemCount: imagePaths.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) => PlacePhotoWidget(
                  imagePath: imagePaths[index],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 8.0,
            right: 0.0,
            left: 0.0,
            child: ImageIndicator(
              length: imagePaths.length,
              currentIndex: currentPage,
            ),
          ),
        ],
      ),
    );
  }
}
