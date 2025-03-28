import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

class CourseMapWidget extends StatefulWidget {
  const CourseMapWidget({super.key});

  @override
  State<CourseMapWidget> createState() => _CourseMapWidgetState();
}

class _CourseMapWidgetState extends State<CourseMapWidget> {
  bool _clickedIcon = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _map(),
        _description(),
      ],
    );
  }

  /// 코스 지도 영역
  Widget _map() => Container(
        key: const Key("Course Map Widget Map"),
        width: double.infinity,
        height: 336,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
            bottom: Radius.zero,
          ),
          border: Border.all(color: Colors.grey, width: 1),
          color: ThemeColor.basicGrey,
        ),

        /// 후에 지도 코스 보여주는 화면 넣을 것.
        child: Container(),
      );

  /// 코스 태그, 위치, 관심을 둔 사람들 프로필을 보여주는 영역
  Widget _description() => Container(
        key: const Key("Course Map Widget Description"),
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.zero,
            bottom: Radius.circular(10),
          ),
          border: Border.all(color: Colors.grey, width: 1),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// 태그 및 위치 영역
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '#카페투어',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    '용산구',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),

              /// 관심을 둔 사람들 프로필을 보여주는 영역
              GestureDetector(
                onTap: () {
                  setState(() {
                    _clickedIcon = !_clickedIcon;
                  });
                },
                child: _clickedIcon
                    ? const Icon(Icons.bookmark)
                    : const Icon(Icons.bookmark_outline),
              ),
            ],
          ),
        ),
      );
}
