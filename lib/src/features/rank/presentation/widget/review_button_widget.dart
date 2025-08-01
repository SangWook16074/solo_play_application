import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewButtonWidget extends StatelessWidget {
  const ReviewButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        /// 후에 리뷰쓰러 가는 페이지로 넘어가는 코드 작성할 것.
        onTap: () {},
        child: Container(
          width: 358,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Color(0xff0070F0),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 14.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/receipt_icon.svg'),
                SizedBox(width: 1),
                Text(
                  '리뷰쓰기',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
