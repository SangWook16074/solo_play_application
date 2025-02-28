import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _map(),
        _description(),
        const SizedBox(height: 8),
      ],
    );
  }

  /// 코스 지도 영역
  Widget _map() => Container(
        key: const Key("Course Widget Map"),
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
        key: const Key("Course Widget Description"),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.zero,
            bottom: Radius.circular(10),
          ),
          border: Border.all(color: Colors.grey, width: 1),
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// 태그 및 위치 영역
              Column(
                children: [
                  Text(
                    '#소품샵',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    '연남동',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),

              /// 관심을 둔 사람들 프로필을 보여주는 영역
              SizedBox(
                width: 150,
                height: 70,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      right: 40,
                      child: Icon(Icons.favorite, size: 30),
                    ),
                    Positioned(
                      right: 10,
                      child: Text(
                        '14',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
