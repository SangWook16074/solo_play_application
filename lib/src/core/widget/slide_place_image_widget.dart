import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:solo_play_application/src/core/widget/image_indicator_widget.dart';
import 'package:solo_play_application/src/core/widget/place_photo_widget.dart';

class SlidePlaceImageWidget extends HookWidget {
  final List<String> images;
  const SlidePlaceImageWidget({super.key, required this.images});

  // @override
  @override
  Widget build(BuildContext context) {
    final currentPage = useState(0);
    final controller = usePageController();

    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: [
          /// 사진 영역
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
                itemCount: images.length,
                onPageChanged: (index) {
                  currentPage.value = index;
                },
                itemBuilder: (context, index) => PlacePhotoWidget(
                  imagePath: images[index],
                ),
              ),
            ),
          ),

          /// indicator 영역
          Positioned(
            bottom: 8.0,
            right: 0.0,
            left: 0.0,
            child: ImageIndicatorWidget(
              length: images.length,
              currentIndex: currentPage.value,
            ),
          ),
        ],
      ),
    );
  }
}
