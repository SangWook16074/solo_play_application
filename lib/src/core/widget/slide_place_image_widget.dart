import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solo_play_application/src/core/widget/image_indicator_widget.dart';
import 'package:solo_play_application/src/core/widget/place_photo_widget.dart';

class SlidePlaceImageWidget extends StatefulWidget {
  final bool isCourse;
  const SlidePlaceImageWidget({super.key, required this.isCourse});

  @override
  State<SlidePlaceImageWidget> createState() => _SlidePlaceImageWidgetState();
}

class _SlidePlaceImageWidgetState extends State<SlidePlaceImageWidget> {
  final List<String> imagePaths = [
    'assets/images/cafe3.jpg',
    'assets/images/cafe2.jpg',
    'assets/images/cafe.jpeg',
  ];

  late final PageController _controller;

  int currentPage = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0, viewportFraction: 1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                controller: _controller,
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

          /// indicator 영역
          Positioned(
            bottom: 8.0,
            right: 0.0,
            left: 0.0,
            child: ImageIndicatorWidget(
              length: imagePaths.length,
              currentIndex: currentPage,
            ),
          ),

          /// 장소의 이름과 위치 영역
          if (widget.isCourse)
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
