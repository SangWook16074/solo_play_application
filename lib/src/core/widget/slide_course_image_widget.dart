import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solo_play_application/src/core/widget/image_indicator_widget.dart';
import 'package:solo_play_application/src/core/widget/place_photo_widget.dart';

class SlideCourseImageWidget extends HookWidget {
  final List<String> images;
  const SlideCourseImageWidget({super.key, required this.images});

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

          /// 장소의 이름과 위치 영역
          Positioned(
            bottom: 20.0,
            left: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '3F LOBBY',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/location_icon.svg'),
                    const SizedBox(width: 2),
                    const Text(
                      '서울 용산구 한강대로 15길 19-19 3층',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
