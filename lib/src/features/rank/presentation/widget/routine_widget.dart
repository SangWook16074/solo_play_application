import 'package:flutter/material.dart';

class RoutineWidget extends StatelessWidget {
  const RoutineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// 1번
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/blue_circle_icon.png',
                  ),
                  Image.asset(
                    'assets/images/check_icon.png',
                  ),
                ],
              ),
              SizedBox(height: 13),
              Text(
                '3F LOBBY',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Pretendard',
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/vector_icon.png',
              ),
              SizedBox(height: 26),
            ],
          ),
          SizedBox(width: 10),

          /// 2번
          Column(
            children: [
              Image.asset(
                'assets/images/circle_grey.png',
              ),
              SizedBox(height: 13),
              Text(
                'mwm',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Pretendard',
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Image.asset(
                'assets/images/vector_icon.png',
              ),
              SizedBox(height: 26),
            ],
          ),
          SizedBox(width: 10),

          /// 3번
          Column(
            children: [
              Image.asset(
                'assets/images/circle_grey.png',
              ),
              SizedBox(height: 13),
              Text(
                '타이틀',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Pretendard',
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Image.asset(
                'assets/images/vector_icon.png',
              ),
              SizedBox(height: 26),
            ],
          ),
          SizedBox(width: 10),

          /// 4번
          Column(
            children: [
              Image.asset(
                'assets/images/circle_grey.png',
              ),
              SizedBox(height: 13),
              Text(
                '타이틀',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Pretendard',
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Image.asset(
                'assets/images/vector_icon.png',
              ),
              SizedBox(height: 26),
            ],
          ),
          SizedBox(width: 10),

          /// 5번
          Column(
            children: [
              Image.asset(
                'assets/images/circle_grey.png',
              ),
              SizedBox(height: 13),
              Text(
                '타이틀',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Pretendard',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
