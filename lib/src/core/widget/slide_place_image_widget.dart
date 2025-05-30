import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/image_indicator_widget.dart';
import 'package:solo_play_application/src/core/widget/place_photo_widget.dart';

class SlidePlaceImageWidget extends StatefulWidget {
  const SlidePlaceImageWidget({super.key});

  @override
  State<SlidePlaceImageWidget> createState() => _SlidePlaceImageWidgetState();
}

class _SlidePlaceImageWidgetState extends State<SlidePlaceImageWidget> {
  final List<String> imagePaths = [
    'assets/images/cafe3.jpg',
    'assets/images/cafe2.jpg',
    'assets/images/cafe.jpeg',
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
            child: ImageIndicatorWidget(
              length: imagePaths.length,
              currentIndex: currentPage,
            ),
          ),
        ],
      ),
    );
  }
}
