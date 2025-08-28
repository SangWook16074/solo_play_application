import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widgets/image_indicator_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/tag_widget.dart';

class SimilarPlacePhotoWidget extends StatefulWidget {
  const SimilarPlacePhotoWidget({super.key});

  @override
  State<SimilarPlacePhotoWidget> createState() =>
      _SimilarPlacePhotoWidgetState();
}

class _SimilarPlacePhotoWidgetState extends State<SimilarPlacePhotoWidget> {
  final List<String> imagePaths = [
    'assets/images/cafe3.jpg',
    'assets/images/cafe2.jpg',
    'assets/images/cafe.jpeg',
  ];
  final controller = PageController(viewportFraction: 1.0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 229,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          width: 1,
          color: const Color(0xffCACACA),
          style: BorderStyle.solid,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Stack(
          children: [
            /// 카페 사진 영역
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 164,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: PageView.builder(
                  physics: const ClampingScrollPhysics(),
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) => Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            /// 이미지 인디케이터 영역
            Positioned(
              bottom: 70.0,
              right: 0.0,
              left: 0.0,
              child: ImageIndicatorWidget(
                length: imagePaths.length,
                currentIndex: currentPage,
              ),
            ),

            /// 카페 이름 / 태그 영역
            Positioned(
              bottom: 8,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '뷰클런즈',
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: List.generate(
                        2,
                        (index) => const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: TagWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
